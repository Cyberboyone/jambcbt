"""Chapter 2 drill bank — current electricity."""

DRILL_2 = [
    ("A charge of 60 C flows past a point in 2.0 minutes. The current is",
     ["0.50 A", "1.0 A", "2.0 A", "30 A"], 0,
     "$I = Q\/t$ with $t = 120$ s, so $I = 60\/120 = 0.50$ A. Leaving the time in minutes makes the answer 60 times too small."),

    ("A current of 3.0 A flows for 5.0 minutes. The charge transferred is",
     ["15 C", "60 C", "900 C", "1800 C"], 2,
     "$Q = I t = 3.0 times 300 = 900$ C. Five minutes is 300 s."),

    ("The unit of potential difference may be written as",
     ["J C", "J C⁻¹", "C s⁻¹", "W C"], 1,
     "One volt is one joule per coulomb, $V = W\/Q$. That is why a 12 V battery gives every coulomb that passes through it 12 J."),

    ("A resistor of 20 Ω carries a current of 0.50 A. The p.d. across it is",
     ["10 V", "20 V", "40 V", "0.025 V"], 0,
     "$V = I R = 0.50 times 20 = 10$ V."),

    ("A p.d. of 6.0 V is applied across a 12 Ω resistor. The current is",
     ["0.50 A", "2.0 A", "72 A", "18 A"], 0,
     "$I = V\/R = 6.0\/12 = 0.50$ A."),

    ("Which graph shows an ohmic conductor?",
     ["a curve of I against V that flattens", "a straight line of I against V through the origin", "a horizontal line", "a straight line of I against V cutting the V axis"], 1,
     "Ohm's law requires the current to be proportional to the p.d., which is a straight line through the origin, so that $R = V\/I$ is the same everywhere."),

    ("The resistance of a filament lamp rises as the current through it rises because",
     ["its length increases", "the filament gets hot and its resistance rises with temperature", "its area increases", "the current destroys the filament"], 1,
     "A metal's resistance rises with temperature, because the lattice vibrates more and the electrons collide more often. That is why the lamp's I–V graph curves."),

    ("A wire has resistance R. Another wire of the same material has twice the length and half the area. Its resistance is",
     ["R", "2R", "4R", "R/4"], 2,
     "$R = rho l \/ A$: doubling $l$ doubles $R$ and halving $A$ doubles it again, so $R$ becomes 4R."),

    ("The resistivity of a material is quoted in",
     ["Ω", "Ω m⁻¹", "Ω m", "Ω m²"], 2,
     "$R = rho l \/ A$ rearranges to $rho = R A \/ l$, so the unit is $Omega$ m. Resistivity is a property of the material; resistance is a property of the wire."),

    ("A nichrome wire 2.0 m long has a cross-sectional area of 1.0 × 10⁻⁷ m². Taking the resistivity as 1.1 × 10⁻⁶ Ω m, its resistance is",
     ["5.5 Ω", "11 Ω", "22 Ω", "2.2 Ω"], 2,
     "$R = rho l \/ A = 1.1 times 10^(-6) times 2.0 \/ 1.0 times 10^(-7) = 22$ $Omega$."),

    ("Two resistors of 6.0 Ω and 3.0 Ω are joined in parallel. The effective resistance is",
     ["2.0 Ω", "4.5 Ω", "9.0 Ω", "18 Ω"], 0,
     "$R = (6 times 3)\/(6 + 3) = 2.0$ $Omega$ — smaller than either resistor, as a parallel combination must be."),

    ("Three resistors of 2.0 Ω each are joined in series. The combination is",
     ["0.67 Ω", "2.0 Ω", "6.0 Ω", "8.0 Ω"], 2,
     "In series the resistances add: $2.0 + 2.0 + 2.0 = 6.0$ $Omega$."),

    ("A 4.0 Ω and a 12 Ω resistor are in parallel across a 12 V supply. The current in the 12 Ω resistor is",
     ["1.0 A", "3.0 A", "4.0 A", "12 A"], 0,
     "In parallel each branch has the full 12 V, so $I = 12\/12 = 1.0$ A. The 4.0 $Omega$ branch carries 3.0 A."),

    ("A cell of e.m.f. 6.0 V and internal resistance 0.50 Ω delivers 2.0 A. The terminal p.d. is",
     ["4.0 V", "5.0 V", "6.0 V", "7.0 V"], 1,
     "$V = E - I r = 6.0 - 1.0 = 5.0$ V. The terminal p.d. of a working cell is always below its e.m.f."),

    ("A cell of e.m.f. 12 V and internal resistance 0.50 Ω is connected to a 5.5 Ω resistor. The current is",
     ["1.8 A", "2.0 A", "2.2 A", "24 A"], 1,
     "$I = E\/(R + r) = 12\/6.0 = 2.0$ A. The internal resistance is part of the total resistance of the circuit."),

    ("The e.m.f. of a cell may be defined as",
     ["the p.d. across it when no current flows", "the p.d. across it when a large current flows", "the power it delivers", "the charge it can supply"], 0,
     "With no current there is no $I r$ drop, so the terminal p.d. equals the e.m.f. — which is how a high-resistance voltmeter measures it."),

    ("A graph of terminal p.d. against current for a cell is a straight line with a negative gradient. The gradient gives",
     ["the e.m.f.", "the internal resistance with a negative sign", "the external resistance", "the power delivered"], 1,
     "$V = E - I r$, so the intercept is $E$ and the gradient is $-r$. The current at which $V = 0$ is the short-circuit current, $E\/r$."),

    ("An electric heater rated 2.0 kW is used on a 240 V supply. The current it draws is",
     ["0.12 A", "8.3 A", "20 A", "480 A"], 1,
     "$I = P\/V = 2000\/240 = 8.3$ A, so a 13 A fuse is the next standard rating. A 5 A fuse would blow immediately."),

    ("The power dissipated in a 5.0 Ω resistor carrying 2.0 A is",
     ["10 W", "20 W", "40 W", "5.0 W"], 1,
     "$P = I^2 R = 4.0 times 5.0 = 20$ W. Using $I R$ instead of $I^2 R$ gives volts, not watts."),

    ("A 100 W lamp is left on for 10 hours. The energy used is",
     ["1.0 kWh", "10 kWh", "36 kWh", "100 kWh"], 0,
     "$E = P t = 0.10$ kW $times$ 10 h $= 1.0$ kWh, which is 3.6 MJ."),

    ("One kilowatt-hour is equal to",
     ["3.6 × 10³ J", "3.6 × 10⁶ J", "1.0 × 10³ J", "6.0 × 10⁶ J"], 1,
     "$1000$ W $times 3600$ s $= 3.6 times 10^6$ J. The unit is a unit of energy, not of power."),

    ("An ammeter should be connected",
     ["in parallel with the component", "in series with the component", "across the supply", "in series with the voltmeter"], 1,
     "Current is measured by passing it through the meter, so the ammeter goes in series. An ideal ammeter has zero resistance."),

    ("An ideal voltmeter has",
     ["zero resistance", "infinite resistance", "the same resistance as the component", "a resistance of 1 Ω"], 1,
     "A voltmeter in parallel must draw no current, or it changes the p.d. it is measuring. Real voltmeters have a very high resistance."),

    ("Two resistors in series have a total resistance of 12 Ω. One of them is 8.0 Ω. The other is",
     ["4.0 Ω", "8.0 Ω", "20 Ω", "1.5 Ω"], 0,
     "In series the resistances add, so the missing one is $12 - 8.0 = 4.0$ $Omega$."),

    ("A 60 W and a 100 W lamp are connected in series across the mains. Which is brighter?",
     ["the 100 W lamp", "the 60 W lamp", "they are equally bright", "neither lights"], 1,
     "In series they carry the same current, and $P = I^2 R$, so the lamp with the larger resistance — the 60 W one, which is designed for a smaller current — dissipates more power."),

    ("The resistance of a wire of diameter d is R. If the diameter is doubled, the resistance becomes",
     ["R/4", "R/2", "2R", "4R"], 0,
     "The area goes as $d^2$, so doubling the diameter makes the area four times larger and $R = rho l\/A$ four times smaller."),

    ("A battery of e.m.f. 9.0 V has an internal resistance of 1.0 Ω. When it is short-circuited, the current is",
     ["0 A", "1.0 A", "9.0 A", "81 A"], 2,
     "With $R = 0$, $I = E\/r = 9.0\/1.0 = 9.0$ A. All the energy is dissipated inside the cell, which is why a short circuit overheats a battery."),

    ("A potential divider consists of a 2.0 kΩ and a 1.0 kΩ resistor in series across 12 V. The p.d. across the 1.0 kΩ resistor is",
     ["3.0 V", "4.0 V", "6.0 V", "8.0 V"], 1,
     "The p.d. divides in proportion to resistance: $V = 12 times 1.0\/(1.0 + 2.0) = 4.0$ V."),

    ("The current through a component is 200 mA and the p.d. across it is 5.0 V. The power is",
     ["0.10 W", "1.0 W", "25 W", "1000 W"], 1,
     "$P = I V = 0.20 times 5.0 = 1.0$ W. The 200 mA must be converted to 0.20 A."),

    ("A 12 V car battery delivers 60 A to the starter motor. The power is",
     ["0.20 W", "5.0 W", "72 W", "720 W"], 3,
     "$P = I V = 60 times 12 = 720$ W, which is close to one horsepower — a good check on the size of the answer."),

    ("Which of the following is *not* true of a series circuit?",
     ["the current is the same everywhere", "the p.d.s add to the supply p.d.", "the total resistance is the sum of the resistances", "the total resistance is less than the smallest resistance"], 3,
     "Series resistances add, so the total is larger than any one of them. The statement about the smallest resistance describes a *parallel* circuit."),

    ("The drift velocity of electrons in a household wire is small because",
     ["the electrons are heavy", "there are enormous numbers of them, so a small drift carries a large current", "the wire is long", "the p.d. is zero"], 1,
     "A current of a few amperes is spread over something like $10^23$ free electrons per metre, so each one drifts only a millimetre per second even though the signal travels at nearly the speed of light."),

    ("A resistor obeys Ohm's law. Its resistance is 25 Ω and the current is 40 mA. The p.d. is",
     ["0.10 V", "1.0 V", "6.3 V", "1000 V"], 1,
     "$V = I R = 0.040 times 25 = 1.0$ V. Forty milliamps is 0.040 A."),

    ("Two identical cells, each of e.m.f. 1.5 V and internal resistance 0.20 Ω, are joined in series. The combination has",
     ["e.m.f. 1.5 V, resistance 0.10 Ω", "e.m.f. 3.0 V, resistance 0.40 Ω", "e.m.f. 3.0 V, resistance 0.10 Ω", "e.m.f. 1.5 V, resistance 0.40 Ω"], 1,
     "In series both the e.m.f.s and the internal resistances add: 3.0 V and 0.40 $Omega$."),

    ("The heating element of a kettle has a resistance of 24 Ω and is connected to 240 V. The current is",
     ["0.10 A", "10 A", "100 A", "5760 A"], 1,
     "$I = V\/R = 240\/24 = 10$ A, and the power is $I V = 2400$ W — a realistic kettle."),

    ("Electrical energy is transmitted at very high voltage because",
     ["high voltages are safer", "the current is smaller, so $I^2 R$ losses in the cables are smaller", "transformers need it", "it increases the power delivered"], 1,
     "For a fixed power, raising the voltage lowers the current, and the power wasted in the cables goes as the square of the current."),

    ("A fuse is connected in series with an appliance so that it",
     ["reduces the current", "melts and breaks the circuit if the current becomes too large", "increases the voltage", "converts a.c. to d.c."], 1,
     "The fuse is a deliberate weak point. Its rating is chosen just above the normal working current, so it never blows in use but always blows in a fault."),

    ("The resistance of a thermistor falls as its temperature rises because",
     ["its area increases", "more charge carriers are freed in the semiconductor", "its length decreases", "its resistivity rises"], 1,
     "In a semiconductor, heat frees extra electrons and holes, which outweighs the extra lattice scattering — so the resistance falls, the opposite of a metal."),

    ("Two resistors of 4.0 Ω and 6.0 Ω are connected in parallel across a 12 V supply. The total current drawn is",
     ["2.0 A", "3.0 A", "5.0 A", "12 A"], 2,
     "Each branch takes the full 12 V: $I = 12\/4.0 + 12\/6.0 = 3.0 + 2.0 = 5.0$ A. The same current would flow through a single 2.4 $Omega$ resistor."),

    ("A battery of e.m.f. 1.5 V has an internal resistance of 0.30 Ω. The greatest current it can deliver is",
     ["0.20 A", "1.5 A", "4.5 A", "5.0 A"], 3,
     "The greatest current is the short-circuit current, $I = E\/r = 1.5\/0.30 = 5.0$ A. It is never useful, because the terminal p.d. has fallen to zero."),
]
