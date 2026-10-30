"""Paper bank for Chapter 2 — current electricity."""

PAPER_2 = [
    ("A charge of 90 C flows past a point in 3.0 minutes. The current is",
     ["0.50 A", "1.5 A", "3.0 A", "30 A"], 0,
     "$I = Q\/t = 90\/180 = 0.50$ A. Three minutes is 180 s, and forgetting that is the commonest error in the topic."),

    ("A current of 0.50 A flows for 20 minutes. The charge transferred is",
     ["10 C", "40 C", "600 C", "1200 C"], 2,
     "$Q = I t = 0.50 times 1200 = 600$ C."),

    ("A p.d. of 9.0 V is applied across a 36 Ω resistor. The current is",
     ["0.25 A", "4.0 A", "0.25 mA", "324 A"], 0,
     "$I = V\/R = 9.0\/36 = 0.25$ A."),

    ("A current of 2.5 A flows through a 12 Ω resistor. The p.d. across it is",
     ["4.8 V", "14.5 V", "30 V", "0.21 V"], 2,
     "$V = I R = 2.5 times 12 = 30$ V."),

    ("The resistance of a 2.0 m length of wire of cross-section 4.0 × 10⁻⁷ m² and resistivity 1.2 × 10⁻⁶ Ω m is",
     ["6.0 Ω", "0.60 Ω", "2.4 Ω", "24 Ω"], 0,
     "$R = rho l \/ A = 1.2 times 10^(-6) times 2.0 \/ 4.0 times 10^(-7) = 6.0$ $Omega$."),

    ("A wire of resistance 8.0 Ω is stretched until its length is doubled, its volume staying the same. Its new resistance is",
     ["4.0 Ω", "8.0 Ω", "16 Ω", "32 Ω"], 3,
     "Stretching doubles the length *and* halves the area, so $R = rho l \/ A$ rises by $2 times 2 = 4$: 32 $Omega$."),

    ("Two resistors of 8.0 Ω and 8.0 Ω are in parallel. The combination is",
     ["4.0 Ω", "8.0 Ω", "16 Ω", "64 Ω"], 0,
     "Equal resistors in parallel give half of one: $8.0\/2 = 4.0$ $Omega$."),

    ("A 3.0 Ω and a 6.0 Ω resistor are in series across a 9.0 V supply. The current is",
     ["0.50 A", "1.0 A", "1.5 A", "3.0 A"], 1,
     "$R = 3.0 + 6.0 = 9.0$ $Omega$, so $I = 9.0\/9.0 = 1.0$ A."),

    ("In the circuit above, the p.d. across the 6.0 Ω resistor is",
     ["3.0 V", "4.5 V", "6.0 V", "9.0 V"], 2,
     "$V = I R = 1.0 times 6.0 = 6.0$ V. The larger resistor takes the larger share of the p.d."),

    ("A cell of e.m.f. 4.5 V and internal resistance 0.50 Ω delivers 1.0 A. The terminal p.d. is",
     ["3.5 V", "4.0 V", "4.5 V", "5.0 V"], 1,
     "$V = E - I r = 4.5 - 0.50 = 4.0$ V."),

    ("A cell of e.m.f. 6.0 V and internal resistance 1.0 Ω is connected to a 2.0 Ω resistor. The current is",
     ["1.5 A", "2.0 A", "3.0 A", "6.0 A"], 1,
     "$I = E\/(R + r) = 6.0\/3.0 = 2.0$ A."),

    ("The power dissipated in a 4.0 Ω resistor carrying 3.0 A is",
     ["12 W", "36 W", "7.0 W", "144 W"], 1,
     "$P = I^2 R = 9.0 times 4.0 = 36$ W. The $I^2$ is what makes heating rise so steeply with current."),

    ("A 60 W lamp is used on a 240 V supply. The current through it is",
     ["0.25 A", "0.40 A", "2.5 A", "4.0 A"], 0,
     "$I = P\/V = 60\/240 = 0.25$ A."),

    ("An electric iron rated 1500 W is used for 30 minutes. The energy used is",
     ["0.75 kWh", "1.5 kWh", "45 kWh", "2.7 kWh"], 0,
     "$E = P t = 1.5$ kW $times 0.5$ h $= 0.75$ kWh, which is 2.7 MJ."),

    ("At ₦60 per kWh, running a 2.0 kW heater for 5.0 hours costs",
     ["₦120", "₦300", "₦600", "₦1200"], 2,
     "Energy $= 2.0 times 5.0 = 10$ kWh, so the cost is $10 times 60 = $ ₦600."),

    ("Two resistors in parallel have a combined resistance of 3.0 Ω. One of them is 12 Ω. The other is",
     ["4.0 Ω", "6.0 Ω", "9.0 Ω", "15 Ω"], 0,
     "$1\/3.0 = 1\/12 + 1\/R$, so $1\/R = 0.333 - 0.083 = 0.25$ and $R = 4.0$ $Omega$."),

    ("A potential divider has a 3.0 kΩ and a 6.0 kΩ resistor in series across 9.0 V. The p.d. across the 6.0 kΩ resistor is",
     ["3.0 V", "4.5 V", "6.0 V", "9.0 V"], 2,
     "$V = 9.0 times 6.0\/(3.0 + 6.0) = 6.0$ V."),

    ("The resistance of a metal wire rises with temperature because",
     ["the wire gets longer", "the ions vibrate more and scatter the electrons", "the electrons slow down", "the current destroys the wire"], 1,
     "More vigorous lattice vibration means more collisions for the drifting electrons, so the resistance rises. A thermistor behaves the opposite way."),

    ("A graph of p.d. against current for a metal conductor at constant temperature is",
     ["a curve through the origin", "a straight line through the origin", "a horizontal line", "a straight line cutting the current axis"], 1,
     "Ohm's law: $V prop I$, and the gradient of the line is the resistance."),

    ("An ammeter of very low resistance is connected in parallel with a resistor. The effect is",
     ["no change", "to short-circuit the resistor", "to double the resistance", "to halve the current"], 1,
     "A near-zero resistance across the component carries almost all the current, which is why an ammeter must always be in series."),

    ("Three cells of e.m.f. 1.5 V and internal resistance 0.30 Ω each are joined in series. The battery has",
     ["e.m.f. 1.5 V, resistance 0.90 Ω", "e.m.f. 4.5 V, resistance 0.90 Ω", "e.m.f. 4.5 V, resistance 0.10 Ω", "e.m.f. 4.5 V, resistance 0.30 Ω"], 1,
     "Both add in series: $3 times 1.5 = 4.5$ V and $3 times 0.30 = 0.90$ $Omega$."),

    ("Two identical cells in parallel are used to drive a lamp. Compared with one cell alone, the combination",
     ["delivers twice the current", "has the same e.m.f. but half the internal resistance", "has twice the e.m.f.", "has no internal resistance"], 1,
     "Cells in parallel keep the same e.m.f. but share the current, so the internal resistance is halved — which is why parallel cells last longer."),

    ("The cost of electrical energy is measured in kilowatt-hours because",
     ["power is measured in kilowatts", "energy is power × time", "resistance is measured in ohms", "voltage is measured in kilovolts"], 1,
     "A kilowatt-hour is a kilowatt multiplied by an hour: a practical unit of energy, equal to 3.6 MJ."),

    ("A 12 Ω and a 4.0 Ω resistor are in parallel across 12 V. The current in the 4.0 Ω branch is",
     ["1.0 A", "2.0 A", "3.0 A", "4.0 A"], 2,
     "Each branch has the full 12 V, so $I = 12\/4.0 = 3.0$ A."),

    ("A fuse rated 5 A is fitted to an appliance that draws 4.5 A. The fuse",
     ["blows immediately", "carries the current without blowing", "reduces the current to 5 A", "increases the voltage"], 1,
     "The rating is the current at which it melts; 4.5 A is below it, so the fuse behaves as an ordinary connecting wire."),

    ("A resistor obeys Ohm's law with $R = 15$ Ω. When the p.d. is doubled, the resistance",
     ["doubles", "halves", "is unchanged", "falls to zero"], 2,
     "For an ohmic conductor the resistance is a constant: the current doubles, but $V\/I$ stays the same."),

    ("The current through a filament lamp is plotted against p.d. The graph curves because",
     ["the lamp is not a conductor", "the resistance rises as the filament heats", "the current is alternating", "the lamp has a capacitor"], 1,
     "The filament reaches thousands of degrees, and the resistance of a metal rises with temperature, so the graph flattens at high p.d."),

    ("Electrical power may be written as",
     ["$I R$", "$I^2 R$", "$V\/R$", "$V R$"], 1,
     "Combining $P = I V$ with $V = I R$ gives $P = I^2 R$, and with $I = V\/R$ gives $P = V^2\/R$."),

    ("A battery of e.m.f. 9.0 V has an internal resistance of 0.50 Ω. When it drives 4.0 A, the power wasted inside it is",
     ["2.0 W", "8.0 W", "18 W", "36 W"], 1,
     "$P = I^2 r = 16 times 0.50 = 8.0$ W, which is why a battery warms up when it is worked hard."),

    ("Which arrangement gives the smallest resistance from four 8.0 Ω resistors?",
     ["all four in series", "two in series, in parallel with two in series", "all four in parallel", "three in series with one in parallel"], 2,
     "Four in parallel give $8.0\/4 = 2.0$ $Omega$, the smallest of the possibilities; four in series give 32 $Omega$."),

    ("A galvanometer of resistance 5.0 Ω reads full scale at 10 mA. To use it as a voltmeter reading 5.0 V, it needs a series resistor of",
     ["495 Ω", "500 Ω", "45 Ω", "5.0 Ω"], 0,
     "$R_total = V\/I = 5.0\/0.010 = 500$ $Omega$, of which 5.0 $Omega$ is the meter, so 495 $Omega$ must be added."),

    ("The drift velocity of electrons in a wire is of the order of",
     ["10⁸ m s⁻¹", "10⁶ m s⁻¹", "10⁻⁴ m s⁻¹", "10 m s⁻¹"], 2,
     "Electrons drift at about a millimetre per second; the *signal* travels at nearly the speed of light because the field is established almost instantly along the wire."),

    ("A 100 W and a 40 W lamp are connected in parallel across the mains. The brighter lamp is",
     ["the 40 W one", "the 100 W one", "neither — both are equally bright", "it depends on the fuse"], 1,
     "In parallel each has the full supply p.d., so $P = V^2\/R$ makes the low-resistance 100 W lamp the brighter one."),

    ("A resistor of 25 Ω carries 200 mA. The power dissipated is",
     ["0.10 W", "1.0 W", "5.0 W", "500 W"], 1,
     "$P = I^2 R = (0.20)^2 times 25 = 1.0$ W. The current must be in amperes."),

    ("The terminal p.d. of a cell falls as the current drawn rises because",
     ["the e.m.f. falls", "the cell has internal resistance", "the external resistance rises", "the current is alternating"], 1,
     "$V = E - I r$: the lost volts $I r$ grow with the current, so the terminal p.d. falls while the e.m.f. stays the same."),

    ("A short circuit across a battery is dangerous mainly because",
     ["the voltage rises", "the current is very large and the battery overheats", "the e.m.f. falls", "the wire becomes magnetic"], 1,
     "With almost no external resistance the current is limited only by the internal resistance, and the heat $I^2 r$ is dissipated inside the cell."),

    ("The unit of electrical energy may be written as",
     ["W s", "W s⁻¹", "J s", "J s⁻¹"], 0,
     "A watt-second is a joule, and a kilowatt-hour is 3.6 million of them. A joule is a watt multiplied by a second."),

    ("A household circuit is wired in parallel rather than in series so that",
     ["each appliance gets the full mains p.d. and can be switched independently", "the total resistance is larger", "the current is smaller", "the fuse can be smaller"], 0,
     "In parallel every appliance sees 240 V and switching one off does not break the circuit for the others."),

    ("A 1.0 kW kettle and a 2.0 kW kettle are both filled with the same amount of water and switched on together. The 2.0 kW kettle boils first because",
     ["it has a larger resistance", "it delivers energy faster", "it has a smaller resistance and draws more current", "it heats the water to a lower temperature"], 2,
     "$P = V^2\/R$ at fixed mains p.d., so the higher-power kettle has the smaller element resistance and the larger current."),

    ("The resistance of a wire of length l and area A is R. A second wire of the same material has length 2l and area 2A. Its resistance is",
     ["R", "2R", "R/2", "4R"], 0,
     "$R = rho l\/A$: doubling both the length and the area leaves the ratio unchanged, so the resistance is unchanged."),
]
