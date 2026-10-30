"""Chapter 4 drill bank — electronics."""

DRILL_4 = [
    ("Thermionic emission is the emission of",
     ["protons from a hot metal", "electrons from a hot metal", "photons from a cold metal", "ions from a gas"], 1,
     "Heating a metal gives its free electrons enough thermal energy to escape the surface. The emitter is called the cathode."),

    ("In a cathode-ray tube, the beam is deflected",
     ["towards the negative plate", "towards the positive plate", "along the tube axis", "not at all"], 1,
     "The beam is a stream of electrons, so it is attracted towards the plate at a positive potential."),

    ("The energy gained by an electron accelerated through a p.d. of 2000 V is",
     ["3.2 × 10⁻¹⁶ J", "1.6 × 10⁻¹⁶ J", "3.2 × 10⁻¹⁹ J", "2000 J"], 0,
     "$W = e V = 1.6 times 10^(-19) times 2000 = 3.2 times 10^(-16)$ J, which is 2000 eV."),

    ("The resistance of a pure semiconductor falls as its temperature rises because",
     ["its length decreases", "more charge carriers are freed", "the ions stop moving", "its resistivity is negative"], 1,
     "Heat frees electrons from their bonds, and the extra carriers outweigh the extra scattering — the opposite of the behaviour of a metal."),

    ("A semiconductor doped with a pentavalent element becomes",
     ["p-type, with holes as the majority carriers", "n-type, with electrons as the majority carriers", "an insulator", "intrinsic"], 1,
     "A pentavalent atom has one more valence electron than silicon needs, so it donates a free electron: n-type, electrons as carriers."),

    ("A semiconductor doped with a trivalent element becomes",
     ["p-type, with holes as the majority carriers", "n-type, with electrons as the majority carriers", "magnetised", "a perfect insulator"], 0,
     "A trivalent atom is one electron short, which leaves a hole — a vacancy that behaves as a positive carrier. That is p-type material."),

    ("The depletion layer of a p-n junction",
     ["contains an excess of free electrons", "is a region with no free carriers and a small barrier p.d.", "is where the current is largest", "is always 0.3 V wide"], 1,
     "Diffusion carries carriers across the junction and neutralises them, leaving a thin layer that acts as a barrier — about 0.7 V in silicon."),

    ("A diode is forward biased when",
     ["the p-side is connected to the negative terminal", "the p-side is connected to the positive terminal", "no p.d. is applied", "it is heated"], 1,
     "Forward bias lowers the barrier, so current flows once the applied p.d. exceeds about 0.7 V."),

    ("A silicon diode in series with a 100 Ω resistor is connected to 6.0 V, forward biased. The current is about",
     ["60 mA", "53 mA", "6.0 mA", "600 mA"], 1,
     "The diode takes about 0.7 V, so $I = (6.0 - 0.7)\/100 = 0.053$ A $= 53$ mA. Ignoring the diode gives 60 mA."),

    ("In reverse bias a diode",
     ["conducts heavily", "conducts only a tiny leakage current", "behaves as a resistor of 0.7 Ω", "becomes a short circuit"], 1,
     "Reverse bias raises the barrier, so only a leakage current of microamps flows until breakdown."),

    ("The graph of current against p.d. for a diode is",
     ["a straight line through the origin", "a straight line not through the origin", "almost zero in reverse and rising steeply in forward", "a circle"], 2,
     "A diode is not ohmic: it conducts almost nothing one way and heavily the other once past the knee at 0.7 V."),

    ("Half-wave rectification uses",
     ["one diode", "two diodes", "three diodes", "four diodes"], 0,
     "A single diode passes one half of each cycle and blocks the other, so the output is a train of pulses at the supply frequency."),

    ("Full-wave rectification in a bridge rectifier uses",
     ["one diode", "two diodes", "four diodes", "six diodes"], 2,
     "Four diodes steer both half-cycles round the load in the same direction, so the output pulses twice per cycle."),

    ("A capacitor is connected across the output of a rectifier in order to",
     ["increase the frequency", "smooth the pulses into a steadier d.c.", "rectify the current", "reduce the voltage to zero"], 1,
     "The capacitor charges on the peaks and discharges between them, filling in the gaps and leaving a nearly steady d.c."),

    ("A transistor is described as a current amplifier because",
     ["it increases the charge", "a small base current controls a large collector current", "it stores energy", "it has three terminals"], 1,
     "$I_c = beta I_b$: a few microamps at the base give milliamps at the collector, so a small signal controls a large one."),

    ("A transistor has a base current of 40 µA and a collector current of 2.0 mA. Its current gain is",
     ["20", "50", "80", "500"], 1,
     "$beta = I_c \/ I_b = 2.0 times 10^(-3) \/ 40 times 10^(-6) = 50$. Both currents must be in the same unit."),

    ("For a transistor, the emitter current is",
     ["equal to the collector current", "the sum of the base and collector currents", "the difference of the base and collector currents", "always zero"], 1,
     "$I_e = I_b + I_c$, so the emitter current is fractionally the largest — the base current has to go somewhere."),

    ("With a current gain of 100 and a base current of 30 µA, the collector current is",
     ["0.30 mA", "3.0 mA", "30 mA", "300 mA"], 1,
     "$I_c = beta I_b = 100 times 30 times 10^(-6) = 3.0 times 10^(-3)$ A $= 3.0$ mA."),

    ("A transistor used as a switch is",
     ["biased in the middle of its characteristic", "either off or fully on", "always conducting", "used without a base connection"], 1,
     "As a switch it is driven between no base current (off) and enough base current for saturation (on), which is how it drives a lamp or relay."),

    ("The output of an AND gate is 1 only when",
     ["both inputs are 0", "both inputs are 1", "either input is 1", "the inputs are different"], 1,
     "AND requires all its inputs to be high. With two inputs, three of the four input combinations give 0."),

    ("The output of an OR gate is 0 only when",
     ["both inputs are 0", "both inputs are 1", "one input is 1", "the inputs are different"], 0,
     "OR gives 1 if any input is 1, so the only way to get 0 is for every input to be 0."),

    ("A NOT gate with an input of 1 gives an output of",
     ["0", "1", "2", "high impedance"], 0,
     "NOT inverts: it is the only gate with a single input, and its symbol carries a small circle at the output."),

    ("The symbol for an AND gate is",
     ["a D-shape", "a curved shield", "a triangle with a circle", "a rectangle"], 0,
     "The D-shape is AND; the curved shield is OR; the triangle with a circle is NOT."),

    ("An AND gate is followed by a NOT gate. With inputs 1 and 0 the output is",
     ["0", "1", "2", "undefined"], 1,
     "AND gives 0, and NOT inverts it to 1. The combination is a NAND gate, whose output is 0 only when both inputs are 1."),

    ("A two-input gate gives an output of 1 for the inputs 00, 01 and 10, and 0 for 11. The gate is",
     ["AND", "OR", "NAND", "NOR"], 2,
     "The output is 0 only in the single case where both inputs are 1, which is the negation of AND — a NAND gate."),

    ("The number of rows in the truth table of a two-input gate is",
     ["2", "3", "4", "8"], 2,
     "Each input has two states, so two inputs give $2 times 2 = 4$ combinations: 00, 01, 10 and 11."),

    ("The number of rows in the truth table of a three-input gate is",
     ["3", "6", "8", "9"], 2,
     "$2^3 = 8$ combinations. The number doubles with each extra input."),

    ("A logic gate whose output is the inverse of an AND gate is called",
     ["NOR", "NAND", "XOR", "NOT"], 1,
     "NAND is AND followed by NOT, and it is the universal gate — any other gate can be built from NANDs alone."),

    ("An X-ray tube produces X-rays when",
     ["light strikes a metal", "fast electrons are stopped by a heavy metal target", "a gas is heated", "a magnet is rotated"], 1,
     "The kinetic energy of the electrons is converted into electromagnetic radiation of very short wavelength when they are decelerated in the target."),

    ("A thermionic emitter in a valve or a cathode-ray tube is made of tungsten because",
     ["it is cheap", "it can be heated to a high temperature without melting", "it is an insulator", "it has a high resistance"], 1,
     "Tungsten has the highest melting point of any metal, so it can run hot enough to emit electrons copiously without melting or evaporating."),

    ("In a cathode-ray oscilloscope the time base",
     ["deflects the beam vertically", "deflects the beam horizontally", "accelerates the electrons", "focuses the beam"], 1,
     "The time base sweeps the spot across the screen at a steady rate, so the horizontal axis becomes time and the vertical deflection becomes the signal."),

    ("Doping a semiconductor",
     ["adds charge to the crystal", "adds charge carriers without adding net charge", "removes electrons permanently", "makes it an insulator"], 1,
     "The dopant atoms sit in the lattice and each donates a carrier or a hole, but the crystal remains electrically neutral overall."),

    ("A light-emitting diode emits light when",
     ["it is reverse biased", "electrons and holes recombine in forward bias", "it is heated", "it is cooled"], 1,
     "In forward bias, electrons crossing the junction fall into holes and release the energy difference as a photon — the colour is set by the semiconductor's band gap."),

    ("The forward voltage drop of a germanium diode is about",
     ["0.3 V", "0.7 V", "3.0 V", "7.0 V"], 0,
     "Germanium junctions have a lower barrier (about 0.3 V) than silicon (about 0.7 V), which is why germanium was once preferred for small signals."),

    ("A transistor and a diode are similar in that both",
     ["are made from p-n junctions", "have two terminals", "amplify signals", "are made of copper"], 0,
     "A diode is one p-n junction; a transistor is two junctions back to back with three connections."),

    ("A NOR gate with inputs 0 and 1 gives",
     ["0", "1", "2", "high"], 0,
     "OR gives 1, and NOT inverts it to 0. NOR gives 1 only when both inputs are 0."),

    ("Increasing the base current of a transistor in its active region",
     ["decreases the collector current", "increases the collector current proportionally", "has no effect", "turns it into a diode"], 1,
     "In the active region $I_c = beta I_b$, so the collector current follows the base current multiplied by the gain."),

    ("Which is *not* an advantage of a transistor over a thermionic valve?",
     ["it is smaller", "it needs no heater supply", "it operates at low voltage", "it can handle much greater power"], 3,
     "A valve still wins for very high power, but a transistor is smaller, cooler and works from a few volts."),

    ("A diode is connected across a 12 V a.c. supply in series with a lamp. The lamp",
     ["lights on both half-cycles", "lights on alternate half-cycles", "never lights", "lights continuously at half brightness"], 1,
     "The diode conducts only when forward biased, so the lamp receives one pulse per cycle — half-wave rectification."),

    ("An intrinsic semiconductor at absolute zero would",
     ["be a perfect conductor", "behave as an insulator", "emit light", "be magnetic"], 1,
     "With no thermal energy there are no free carriers, so a pure semiconductor at 0 K is effectively an insulator."),
]
