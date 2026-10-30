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
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Six results that are quoted in the chapters and derived here in full. Only the first is examinable as a derivation, but all six are worth reading once — a formula you have seen built is a formula you do not misremember.]
]

#v(4pt)

== H.1 The Pressure of a Gas: $p V = 1\/3 N m c^2$

Take a cubical box of side $L$, so the volume is $V = L^3$, holding $N$ molecules each of mass $m$. Suppose a molecule moves along one axis with speed $u$.

Its momentum is $m u$ before it hits the wall and $-m u$ after, so the change of momentum at each impact is $2 m u$. Between two impacts on the same wall it must travel across the box and back, a distance $2 L$, which takes a time $2 L \/ u$. The average force the molecule exerts on that wall is therefore

  (change of momentum) ÷ (time between impacts) = $2 m u ÷ (2 L \/ u) = m u^2 \/ L$.

For $N$ molecules moving in three dimensions, the total force on one wall is $N m overline(u^2) \/ (3 L)$, because only a third of the molecules' motion is along that axis on average. Pressure is force per unit area, and the area of the wall is $L^2$:

  $p = (N m overline(u^2) \/ (3 L)) ÷ L^2 = N m overline(u^2) \/ (3 V)$.

Multiply across by $V$, replace $overline(u^2)$ by the mean square speed $c^2$ over all directions, and the result is

  $p V = 1\/3 N m c^2$.

*What it says.* Pressure is the rate at which the molecules hand momentum to the walls, per unit area. Double the number of molecules and the pressure doubles; double their mean square speed and it doubles again; make the box smaller and the impacts come more often — that is the whole of Boyle's law in one line.

== H.2 Temperature Is Mean Kinetic Energy

Compare the derived result with the ideal gas law in its molecular form, $p V = N k T$, where $k$ is Boltzmann's constant. Setting the two expressions for $p V$ equal:

  $1\/3 N m c^2 = N k T$, so $1\/2 m c^2 = 3\/2 k T$.

The left-hand side is the average translational kinetic energy of one molecule. The right-hand side contains nothing but a constant and the absolute temperature. So the mean kinetic energy of a gas molecule depends on temperature alone — not on the mass of the molecule, not on the pressure, not on the gas.

*What it says.* At the same temperature, a hydrogen molecule and an oxygen molecule have the same average kinetic energy, but the hydrogen one is four times faster, because $1\/2 m c^2$ is fixed and $m$ is sixteen times smaller. This is the single most useful sentence in the kinetic theory.

== H.3 Why the Volume Coefficient Is Three Times the Linear One

A cube of side $L_0$ has volume $V_0 = L_0^3$. Heat it through $Delta theta$ and each side becomes $L_0 (1 + alpha Delta theta)$. The new volume is

  $V = L_0^3 (1 + alpha Delta theta)^3 = V_0 (1 + 3 alpha Delta theta + 3 alpha^2 Delta theta^2 + alpha^3 Delta theta^3)$.

For a metal, $alpha$ is of the order of $10^(-5)$ per kelvin, so $alpha^2$ is of the order of $10^(-10)$ and $alpha^3$ of $10^(-15)$. At a temperature rise of a few hundred kelvin those terms are utterly negligible against $3 alpha Delta theta$, so to every significant figure that matters

  $V = V_0 (1 + 3 alpha Delta theta)$, that is $gamma = 3 alpha$.

The same argument in two dimensions gives $beta = 2 alpha$. This is why a hole in a metal plate expands as though it were made of metal: every linear dimension of the hole grows with $alpha$, and the area grows with $2 alpha$.

== H.4 The Combined Gas Law From the Three Laws

Take a fixed mass of gas in state 1 ($p_1, V_1, T_1$) and move it to state 2 in two steps.

*Step one: change the pressure at constant temperature.* By Boyle's law, $p_1 V_1 = p' V'$, where $V' = p_1 V_1 \/ p'$.

*Step two: change the temperature at constant pressure.* By Charles' law, $V' \/ T_1 = V_2 \/ T_2$, so $V' = V_2 T_1 \/ T_2$.

Setting the two expressions for $V'$ equal gives $p_1 V_1 \/ p' = V_2 T_1 \/ T_2$, and rearranging,

  $(p_1 V_1) \/ T_1 = (p_2 V_2) \/ T_2$.

The route through the intermediate state is why the combined law works: each of the three simple laws holds one quantity fixed, and any change can be broken into steps that hold one quantity fixed at a time. If instead the amount of gas is known, $p V \/ T = n R$ for every state, which is the ideal gas law.

== H.5 Efficiency, and Why 100 % Is Impossible

An engine takes heat $Q_1$ from a hot reservoir, does work $W$ and rejects heat $Q_2$ to a cold sink. Over a complete cycle the working substance returns to its starting state, so its internal energy returns too and $Delta U = 0$. The first law then gives $Q_1 - Q_2 = W$, and efficiency is by definition

  $eta = W \/ Q_1 = (Q_1 - Q_2) \/ Q_1 = 1 - Q_2 \/ Q_1$.

Efficiency is 100 % only if $Q_2 = 0$, that is, only if no heat is rejected at all. The second law forbids that: a cyclic engine that rejected nothing would take heat from a single reservoir and turn it entirely into work, and no such engine has ever been built. Carnot's ideal engine, working reversibly between $T_1$ and $T_2$, has $Q_2 \/ Q_1 = T_2 \/ T_1$, so

  $eta_"Carnot" = 1 - T_2 \/ T_1$.

Every real engine between the same two temperatures is worse than this, never better: friction, turbulence and heat leaks are all irreversible, and irreversibility always costs work.

== H.6 Calibrating a Thermometer

A thermometer's property $X$ — the length of a mercury column, the resistance of a wire, the e.m.f. of a thermocouple — varies linearly with temperature between two fixed points. Let $X_0$ be the reading at the ice point and $X_(100)$ the reading at the steam point. A reading $X$ between them corresponds to the temperature

  $theta = (X - X_0) \/ (X_(100) - X_0) times 100$.

The fraction in the middle is the position of the reading between the two fixed points, expressed as a fraction of the whole interval; multiplying by 100 turns that fraction into degrees Celsius. The formula fails outside the interval only because the property stops being linear there — which is exactly why a clinical thermometer is marked only from 35 °C to 42 °C.

== H.7 The Six Results at a Glance

#table(
  columns: (1.7fr, 1.8fr, 2.0fr),
  inset: 4pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Result],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where it comes from],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it lets you say],
  ),
  [$p V = 1\/3 N m c^2$], [momentum delivered to a wall per unit time], [pressure is molecular bombardment],
  [$1\/2 m c^2 = 3\/2 k T$], [comparing with $p V = N k T$], [temperature *is* mean kinetic energy],
  [$c_"rms" = sqrt(3 R T \/ M)$], [the same relation with $R$ and $M$], [lighter gases move faster at the same $T$],
  [$gamma = 3 alpha$, $beta = 2 alpha$], [expanding $(1 + alpha Delta theta)^3$], [a hole expands like the metal around it],
  [$(p_1 V_1)\/T_1 = (p_2 V_2)\/T_2$], [the three gas laws in two steps], [one equation for any gas change],
  [$eta = 1 - T_2 \/ T_1$], [the first and second laws together], [no engine between those temperatures does better],
)

== H.8 If the Derivation Is Actually Asked

A derivation question is marked on three things, and only one of them is algebra.

+ *The assumptions, stated.* Molecules are point masses, collisions are elastic, there are no forces between molecules except during a collision, and the time of a collision is negligible. Say them; they are usually worth a mark on their own.
+ *The symbols, defined.* "$u$ is the component of a molecule's velocity along the axis", "$L$ is the side of the box", "$N$ is the number of molecules". A derivation written without defining its symbols reads as a formula copied from memory.
+ *The book-keeping, shown.* Momentum change $2 m u$; time between impacts $2 L \/ u$; force equals momentum change per unit time; pressure equals force over area. Each line earns a mark, and each is one short sentence.
