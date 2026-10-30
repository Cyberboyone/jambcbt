#import "template.typ": *

#current-chapter.update("Chapter 2: Current Electricity")

#pagebreak()

#chapter-opener(
  2,
  "Current Electricity",
  subtitle: "Current and Charge, Ohm's Law, Resistance and Resistivity, Series and Parallel Networks, E.m.f. and Internal Resistance, Energy, Power and Cost",
  syllabus-ref: "Sec. C • Electricity 2",
  utme-weight: "4 Qs every year",
  running: "Current Electricity",
)

#focus-radar(
  objectives: (
    "Define current, potential difference, resistance and e.m.f., and give the unit of each.",
    "State Ohm's law, draw $I$–$V$ graphs, and distinguish ohmic from non-ohmic conductors.",
    "Use $R = rho l \/ A$ and explain the effect of temperature.",
    "Combine resistors in series and in parallel, and solve network problems.",
    "Treat a real cell with internal resistance, and use $E = V + I r$.",
    "Compute electrical energy and power, and the cost of running an appliance.",
  ),
  hotspots: (
    "“A charge of 30 C passes a point in 2 minutes. The current is …” — 0.25 A, because 2 minutes is 120 s.",
    "“Two 4 Ω resistors in parallel give …” — 2 Ω, and the answer must be smaller than either resistor.",
    "“The terminal p.d. of a cell of e.m.f. 12 V and internal resistance 0.5 Ω carrying 2 A is …” — 11 V.",
    "“A 2 kW heater on a 240 V supply draws …” — 8.3 A, so a 13 A fuse, not a 5 A one.",
    "“The resistance of a wire is doubled when …” — its length is doubled or its area is halved.",
  ),
  trap-summary: "Three slips. (1) Minutes, milliamps and kilojoules left unconverted: $I = Q\/t$ needs seconds, $P = I^2 R$ needs amperes, and $V\/R$ needs ohms. (2) Using the parallel rule for series resistors: they are opposites, and the answer for parallel must be smaller than the smallest resistor. (3) Forgetting the internal resistance: the e.m.f. is the whole energy per coulomb the cell supplies, and the terminal p.d. is what is left after the cell takes its share.",
)

// ============================================================================
== 2.1 Electric Current

In Chapter 1 a charge sat still on a rod and pushed things. Set the same charge moving through a wire and it becomes a current, and the wire warms, lights a bulb or turns a motor. Current electricity is the study of that flow.

#concept-box("Current, and what carries it")[
  The *electric current* is the rate of flow of charge:

  + *Definition:* $I = Q \/ t$, measured in amperes (A). One ampere is one coulomb per second.
  + *Conventional current* runs from the positive terminal of the cell, round the circuit, to the negative terminal — opposite to the drift of the electrons that actually carry the charge in a metal.
  + *Charge moved:* $Q = I t$, so a current of 2 A for 5 minutes moves $2 times 300 = 600$ C.

  The ampere is one of the seven SI base units. The coulomb is defined from it, not the other way round.
]

The drift speed of the electrons is remarkably small — of the order of a millimetre per second in a household wire — even though the *signal* travels at nearly the speed of light, because switching on a lamp starts all the electrons along the wire at once. What is fast is the electric field that pushes them, not the electrons themselves.

#shortcut-box("The three quantities, in the order the paper asks for them")[
  + *Charge* is what flows: $Q = I t$, in coulombs.
  + *Potential difference* is the energy each coulomb gives up: $V = W\/Q$, in volts.
  + *Resistance* is what limits the flow: $R = V\/I$, in ohms.

  Every circuit question begins with one of those three definitions and ends with an arithmetic step. If you cannot say which of the three you are being asked for, you cannot choose the formula.
]

// ============================================================================
== 2.2 Potential Difference, E.m.f. and Ohm's Law

A cell does work on the charge it pushes round the circuit. The *electromotive force* is the energy it gives to each coulomb; the *potential difference* between two points is the energy each coulomb gives up between them. Both are measured in volts, and for a cell with no losses they are numerically equal.

#concept-box("Potential difference and e.m.f.")[
  + *Potential difference* between two points is the work done per unit charge in carrying charge between them: $V = W \/ q$.
  + *Electromotive force* (e.m.f.) is the work done per unit charge by the source in driving charge round the whole circuit. Its symbol is $E$ and its unit is the volt.

  A voltmeter connected across a cell at rest reads its e.m.f. Connected across a working circuit it reads the potential difference — which is smaller, because the cell has to push current through its own internal resistance.
]

#formula-box("Ohm's law")[
  *The law:* for a metallic conductor at constant temperature, the current is directly proportional to the potential difference across it: $V = I R$. The constant $R$ is the resistance, in ohms ($Omega$); one ohm is the resistance of a conductor in which a p.d. of one volt drives a current of one ampere.

  *The three rearrangements:* $V = I R$, $I = V \/ R$, $R = V \/ I$.
]

#diagram-fig("diagrams/ch02_iv.svg",
  "Current against potential difference. A metal wire at constant temperature gives a straight line through the origin — that is Ohm's law. A filament lamp curves over, because the filament gets hot and its resistance rises with temperature, which is why the law is stated for a conductor at constant temperature.", width: 84%)

*Ohmic and non-ohmic.* A conductor obeys Ohm's law if its $I$–$V$ graph is a straight line through the origin, so that $R$ is the same at every point. Metals at constant temperature do; a filament lamp, a thermistor and a diode do not. The lamp's graph curves because the current heats the filament, and a hotter metal has a higher resistance. The diode of Chapter 4 does not conduct at all in one direction.

#worked-example(
  1,
  "Current from a charge, and the electrons behind it",
  [A charge of 30 C passes through a lamp in 2.0 minutes. (a) Find the current. (b) Find the number of electrons that passed, taking $e = 1.6 times 10^(-19)$ C.],
  [
    *(a)* Convert the time: $t = 2.0$ min $= 120$ s.

    $I = Q \/ t = 30 \/ 120 = 0.25$ A.

    *(b)* Each electron carries $1.6 times 10^(-19)$ C, so the number is

    $n = Q \/ e = 30 \/ (1.6 times 10^(-19)) = 1.9 times 10^20$ electrons.

    *Check.* 0.25 A for two minutes is 30 C, which is what we started with. And $1.9 times 10^20$ electrons is a small fraction of a mole — about $3 times 10^(-4)$ mol — which is why a lamp can run for hours on a few grams of copper without its supply of electrons running out.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 2.3 Resistance and Resistivity

Resistance is a property of a particular piece of wire; *resistivity* is a property of the material it is made from. Two copper wires of different length have different resistances but the same resistivity.

#formula-box("Resistance from the shape of the wire")[
  *The relation:* $R = rho l \/ A$, where $rho$ is the resistivity in $Omega$ m, $l$ the length in metres and $A$ the cross-sectional area in m². Resistance rises with length, because the electrons have further to travel and more collisions to survive, and falls with area, because a wider wire is a wider road.

  *Cross-sections:* for a wire of diameter $d$, $A = pi d^2 \/ 4$. A diameter doubled gives four times the area and therefore a quarter of the resistance.
]

#diagram-fig("diagrams/ch02_resistivity.svg",
  "Resistance depends on the wire, not only on the material. Doubling the length doubles R; doubling the area halves it; heating a metal raises it; and changing copper for nichrome raises it again because the resistivity is different.", width: 100%)

*Temperature.* In a metal, raising the temperature makes the lattice vibrate harder, so the electrons collide more often and the resistance rises. In a semiconductor or a thermistor the opposite happens: more charge carriers are freed as it warms, so the resistance *falls*. That single difference is a favourite examination question, and it is the reason a thermistor can be used as a thermometer.

#formula-box("Combining resistances")[
  + *Series:* $R = R_1 + R_2 + dots$ — the same current passes through each, and the p.d.s add.
  + *Parallel:* $1\/R = 1\/R_1 + 1\/R_2 + dots$ — the same p.d. is across each, and the currents add.

  For two resistors in parallel there is a shortcut worth memorising: $R = (R_1 R_2)\/(R_1 + R_2)$, the *product over the sum*. Two equal resistors in parallel give half of one; three give a third.
]

#diagram-fig("diagrams/ch02_circuits.svg",
  "The two ways to join resistors, drawn with the meters where they belong: the ammeter in series with the current it measures, the voltmeter in parallel with the component whose p.d. it measures. An ideal ammeter has zero resistance and an ideal voltmeter infinite resistance — a question that gives either of them a resistance is asking you to correct the reading.", width: 100%)

#worked-example(
  2,
  "The resistance of a piece of resistance wire",
  [A nichrome wire is 1.0 m long and has a cross-sectional area of 0.20 mm². Taking the resistivity of nichrome as $1.1 times 10^(-6)$ $Omega$ m, find its resistance, and state the resistance of a second, identical wire joined to it end to end.],
  [
    Convert the area: $0.20$ mm² $= 0.20 times 10^(-6)$ m² $= 2.0 times 10^(-7)$ m².

    $R = (rho l)\/A = (1.1 times 10^(-6) times 1.0)\/(2.0 times 10^(-7)) = 5.5$ $Omega$.

    Two identical wires end to end double the length, so the resistance is $11$ $Omega$.

    *Check.* The resistivity is about sixty times that of copper, which is why nichrome is used for heater elements and not for connecting wires. The area is a fifth of a square millimetre, so the answer of a few ohms is the right order for a laboratory resistance wire — a metre of copper wire of the same size would be about 0.09 $Omega$.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  3,
  "A network of three resistors",
  [A $4.0$ $Omega$ resistor is in series with a parallel pair made of a $6.0$ $Omega$ and a $3.0$ $Omega$ resistor. The whole network is connected across a 12 V supply of negligible internal resistance. Find (a) the total resistance, (b) the total current, (c) the p.d. across the parallel pair, and (d) the current in each branch of the pair.],
  [
    *(a)* The parallel pair: $1\/R_p = 1\/6.0 + 1\/3.0 = 0.500$, so $R_p = 2.0$ $Omega$. Total: $R = 4.0 + 2.0 = 6.0$ $Omega$.

    *(b)* $I = V \/ R = 12 \/ 6.0 = 2.0$ A.

    *(c)* $V_p = I R_p = 2.0 times 2.0 = 4.0$ V. (The other 8.0 V is across the 4.0 $Omega$ resistor.)

    *(d)* In the 6.0 $Omega$ branch: $I = 4.0\/6.0 = 0.67$ A. In the 3.0 $Omega$ branch: $I = 4.0\/3.0 = 1.33$ A.

    *Check.* The two branch currents add to 2.0 A, the total current. The smaller resistor carries the larger current, as it must when both have the same p.d. across them — and the p.d.s, 8.0 V and 4.0 V, add to the 12 V supply.
  ],
  tier: "UTME STANDARD",
)

#trap-box("Parallel answers are smaller than the smallest")[
  Any combination of resistors in parallel has a total resistance *less than the smallest resistor in the group*, because the current has more than one path. If your answer for two 4 $Omega$ resistors in parallel comes out at 8 $Omega$, you have used the series rule — and the arithmetic is otherwise perfectly correct, which is exactly why the examiner offers it as an option.
]

// ============================================================================
== 2.4 E.m.f., Internal Resistance and the Potential Divider

Every real cell has some resistance of its own — the electrolyte and the electrodes resist the current just as a wire does. That *internal resistance* $r$ is inside the source, so the charge has to pay for it before it reaches the outside circuit.

#formula-box("The real cell")[
  + *Energy per coulomb:* the e.m.f. is shared between the external circuit and the cell itself: $E = V + I r$.
  + *Terminal p.d.:* $V = E - I r$. The voltmeter across a working cell reads *less* than its e.m.f.
  + *Total resistance:* $I = E \/(R + r)$.

  The lost volts $I r$ are dissipated as heat inside the cell — which is why a battery warms up when it is worked hard, and why a car battery's terminal voltage sags when the starter motor turns.
]

#diagram-fig("diagrams/ch02_emf.svg",
  "Terminal p.d. against current for a cell. The intercept on the voltage axis is the e.m.f.; the gradient is minus the internal resistance; and the current at which the terminal p.d. reaches zero is the short-circuit current, E/r.", width: 84%)

#worked-example(
  4,
  "A cell with internal resistance",
  [A cell of e.m.f. 12 V and internal resistance $0.50$ $Omega$ is connected to a $5.5$ $Omega$ resistor. Find (a) the current, (b) the terminal p.d., (c) the power delivered to the external resistor and (d) the power wasted inside the cell.],
  [
    *(a)* $I = E \/(R + r) = 12 \/(5.5 + 0.50) = 12\/6.0 = 2.0$ A.

    *(b)* $V = I R = 2.0 times 5.5 = 11$ V. (Equivalently $V = E - I r = 12 - 2.0 times 0.50 = 11$ V.)

    *(c)* $P = I^2 R = 4.0 times 5.5 = 22$ W.

    *(d)* $P_"lost" = I^2 r = 4.0 times 0.50 = 2.0$ W.

    *Check.* The two powers add to 24 W, and the cell supplies $E I = 12 times 2.0 = 24$ W. Both routes agree, which is the definition of a consistent answer. Note also that the cell wastes about 8 % of what it supplies — a real dry cell wastes far more when it is old, because $r$ rises as the chemicals are used up.
  ],
  tier: "UTME STANDARD",
)

*The potential divider.* Two resistors in series across a supply share the voltage in proportion to their resistances, which is the potential-divider rule: $V_1 = V times R_1\/(R_1 + R_2)$. It is the circuit behind every volume control, and the reason a 12 V supply can run a 3 V device through a suitable pair of resistors.

// ============================================================================
== 2.5 Electrical Energy, Power and Cost

A current carries energy from the source to the components, and each component converts it into heat, light or motion. The rate of conversion is the power.

#formula-box("Power and energy")[
  + *Power:* $P = I V$, and with Ohm's law this becomes $P = I^2 R = V^2 \/ R$.
  + *Energy:* $W = P t = I V t$. In joules when $t$ is in seconds.
  + *The unit of billing:* one kilowatt-hour is the energy of a 1 kW appliance running for 1 hour — $1000 times 3600 = 3.6 times 10^6$ J.

  Use whichever form of the power equation fits the quantities you were given: $I V$ if you know both, $I^2 R$ if you know the current through a known resistor, $V^2\/R$ if you know the p.d. across it.
]

#shortcut-box("Household electrics in one box")[
  + *Fuse rating* — choose the next standard size above the working current: a 2 kW heater on 240 V draws 8.3 A, so a 13 A fuse.
  + *Cost* — energy in kWh multiplied by the price per kWh. A 1.5 kW iron for 40 minutes a day for 30 days uses 30 kWh, not 1800.
  + *Why mains is a.c.* — it can be transformed to high voltage for transmission, which cuts the current and therefore the $I^2 R$ loss in the cables.
]

#worked-example(
  5,
  "The cost of running an electric iron",
  [An electric iron rated at 1.5 kW is used for 40 minutes a day for 30 days. (a) Find the energy used in kilowatt-hours. (b) Find the cost at ₦60 per kWh. (c) Find the current it draws from a 240 V supply, and suggest a fuse rating.],
  [
    *(a)* 40 minutes is $40\/60 = 0.67$ h, so each day uses $1.5 times 0.67 = 1.0$ kWh. Over 30 days: $30$ kWh.

    *(b)* Cost $= 30 times 60 = $ ₦1800.

    *(c)* $I = P \/ V = 1500 \/ 240 = 6.25$ A, so a 13 A fuse is the next standard rating above it.

    *Check.* 30 kWh is $30 times 3.6 times 10^6 = 1.08 times 10^8$ J, and at 1.5 kW for 20 hours that is the same energy — one hour a day for a month at one and a half kilowatts. The fuse must be larger than 6.25 A but not so large that it fails to protect the flex; 13 A is the standard choice, and a 5 A fuse would blow on the first switch-on.
  ],
  tier: "JAMB CHALLENGE",
)

#trap-box("Power is not energy")[
  A 2 kW kettle and a 100 W lamp both run on the same mains, but the kettle uses twenty times the power and so twenty times the energy in the same time. Questions that ask "which uses more energy" want watts multiplied by time, and a 100 W lamp left on all day can use more energy than a kettle boiled twice.
]

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: current electricity.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A current is a flow of charge, $I = Q\/t$, and one ampere is one coulomb per second; the conventional current runs from positive to negative while the electrons drift the other way. The e.m.f. of a source is the energy it gives each coulomb and the potential difference between two points is the energy each coulomb gives up, and for a metal at constant temperature the two are linked by Ohm's law, $V = I R$. Resistance depends on the shape and material of the wire through $R = rho l \/ A$, rises with length and with temperature in a metal, and combines as a simple sum in series and as reciprocals in parallel — the parallel answer always smaller than the smallest resistor. A real cell has internal resistance, so $E = V + I r$ and the terminal p.d. falls as the current rises. Power is $I V$, energy is $P t$, and the bill is in kilowatt-hours, one of which is 3.6 MJ.
  ]
]

== 2.6 Chapter 2 in the Exam Hall — a Two-Minute Set

#mcq(1, [A charge of 60 C flows through a conductor in 2.0 minutes. The current is], [0.50 A], [1.0 A], [2.0 A], [30 A])
#mcq(2, [Two resistors of 3 Ω and 6 Ω are connected in parallel. The effective resistance is], [2 Ω], [4.5 Ω], [9 Ω], [18 Ω])
#mcq(3, [A cell of e.m.f. 6.0 V and internal resistance 0.50 Ω delivers a current of 2.0 A. Its terminal p.d. is], [4.0 V], [5.0 V], [6.0 V], [7.0 V])
#mcq(4, [The resistance of a wire of length l and area A is R. A second wire of the same material has length 2l and area 2A. Its resistance is], [R/4], [R/2], [R], [2R])

#answer-key-grid(("A", "A", "B", "C"))

#answer-notes((
  ("A", [$I = Q\/t = 60 \/ 120 = 0.50$ A. The two minutes must be converted to 120 s before dividing.]),
  ("A", [$R = (3 times 6)\/(3 + 6) = 2$ $Omega$ — smaller than either resistor, which is the test that the parallel rule was used.]),
  ("B", [$V = E - I r = 6.0 - 2.0 times 0.50 = 5.0$ V. The terminal p.d. is always less than the e.m.f. while current flows.]),
  ("C", [$R = rho l \/ A$: doubling both $l$ and $A$ leaves the ratio unchanged, so the resistance is still R. Doubling only the length would have given 2R.]),
))

#chapter-checklist("Before you leave Chapter 2", (
  [Define current, p.d., resistance and e.m.f., with the unit of each.],
  [State Ohm's law, and say what "at constant temperature" is doing in it.],
  [Use $R = rho l \/ A$ and explain the effect of length, area and temperature.],
  [Combine resistors in series and in parallel without being told which rule applies.],
  [Use $E = V + I r$ and find the terminal p.d. of a working cell.],
  [Compute power as $I V$, $I^2 R$ or $V^2\/R$, and cost in kilowatt-hours.],
))

#concept-box("Carry this into Chapter 3")[
  A current in a wire produces a magnetic field, and a magnetic field pushes a current-carrying wire. Chapter 3 turns that pair of facts into the motor, the generator and the transformer — three machines that between them carry the whole of the electricity supply from the power station to the socket on your wall.
]
