"""Paper bank for Chapter 4 — electronics."""

PAPER_4 = [
    ("Thermionic emission can be increased by",
     ["cooling the cathode", "raising the temperature of the cathode", "reversing the battery", "using a longer tube"], 1,
     "More heat means more electrons with enough energy to escape the metal — which is why the cathode is heated by a separate supply."),

    ("In a cathode-ray tube the electrons are accelerated by",
     ["a magnetic field", "an electric field between the cathode and the anode", "gravity", "the glass envelope"], 1,
     "The anode is at a high positive potential, so the electrons are pulled towards it and leave with kinetic energy $e V$."),

    ("An electron accelerated through 500 V gains",
     ["5.0 × 10⁻¹⁷ J", "8.0 × 10⁻¹⁷ J", "1.6 × 10⁻¹⁹ J", "500 J"], 1,
     "$W = e V = 1.6 times 10^(-19) times 500 = 8.0 times 10^(-17)$ J, which is 500 eV."),

    ("A semiconductor at room temperature conducts slightly because",
     ["it contains free ions", "a few electrons have enough energy to break free", "it is doped", "it has a low melting point"], 1,
     "Even a pure crystal has a small number of thermally freed electrons, which is why its resistance falls as it warms up."),

    ("In an n-type semiconductor the majority carriers are",
     ["holes", "electrons", "protons", "positive ions"], 1,
     "Pentavalent dopant atoms each contribute a spare electron, so electrons are the majority carriers."),

    ("In a p-type semiconductor the majority carriers are",
     ["electrons", "holes", "neutrons", "negative ions"], 1,
     "Trivalent dopant atoms leave a vacancy in the bonding, and a vacancy behaves as a positive carrier called a hole."),

    ("The barrier p.d. of a silicon p–n junction is about",
     ["0.3 V", "0.7 V", "3.0 V", "7.0 V"], 1,
     "About 0.7 V for silicon and 0.3 V for germanium — the figure to quote before doing any diode arithmetic."),

    ("A diode is used in a circuit to",
     ["amplify a signal", "allow current in one direction only", "store charge", "change a.c. to a higher voltage"], 1,
     "The p–n junction conducts when forward biased and blocks when reverse biased, which is rectification."),

    ("A diode and a 50 Ω resistor are in series across 3.0 V, forward biased. The current is about",
     ["60 mA", "46 mA", "6.0 mA", "30 mA"], 1,
     "The diode takes 0.7 V, leaving 2.3 V across the resistor: $I = 2.3\/50 = 46$ mA."),

    ("The output of a half-wave rectifier is",
     ["a steady d.c.", "pulses at the supply frequency", "pulses at twice the supply frequency", "an a.c. of the same amplitude"], 1,
     "One diode passes every other half-cycle, so the pulses arrive at the same rate as the supply cycles."),

    ("A bridge rectifier conducts on",
     ["one half of each cycle", "both halves of each cycle", "neither half", "alternate cycles only"], 1,
     "Four diodes steer both halves of the wave through the load in the same direction, giving pulses at twice the supply frequency."),

    ("A capacitor across the output of a rectifier works because it",
     ["rectifies the current", "charges on the peaks and discharges between them", "increases the frequency", "blocks the d.c."], 1,
     "It stores energy at the peak of each pulse and gives it back in the trough, which smooths the output into steady d.c."),

    ("The three terminals of a transistor are",
     ["anode, cathode, grid", "base, collector, emitter", "gate, source, drain", "plus, minus, earth"], 1,
     "The base is the control, the collector the output, and the emitter the common terminal through which both currents leave."),

    ("A transistor has a base current of 20 µA and a collector current of 2.4 mA. Its current gain is",
     ["12", "48", "120", "240"], 2,
     "$beta = I_c \/ I_b = 2.4 times 10^(-3) \/ 20 times 10^(-6) = 120$."),

    ("A transistor has β = 150 and a base current of 20 µA. The collector current is",
     ["0.30 mA", "3.0 mA", "30 mA", "300 mA"], 1,
     "$I_c = beta I_b = 150 times 20 times 10^(-6) = 3.0$ mA."),

    ("The emitter current of a transistor is always",
     ["smaller than the collector current", "the sum of the base and collector currents", "equal to the base current", "zero"], 1,
     "$I_e = I_b + I_c$. The base current is small, so the emitter current is only slightly larger than the collector current."),

    ("A transistor with no base current and a collector supply connected is",
     ["fully on", "off, with almost no collector current", "amplifying", "destroyed"], 1,
     "Without base current there is no collector current, which is exactly what a switch needs in its off state."),

    ("In a transistor amplifier the input signal is applied to the",
     ["collector", "base", "emitter", "supply"], 1,
     "A small signal at the base produces a large change in collector current, which is the amplification."),

    ("The output of a two-input AND gate is 1 when",
     ["A = 0, B = 0", "A = 1, B = 0", "A = 0, B = 1", "A = 1, B = 1"], 3,
     "AND requires both inputs to be high; the other three combinations give 0."),

    ("The output of a two-input OR gate is 0 when",
     ["A = 0, B = 0", "A = 1, B = 0", "A = 0, B = 1", "A = 1, B = 1"], 0,
     "OR gives 1 if either input is 1, so only 00 gives 0."),

    ("A NOT gate is also called",
     ["a buffer", "an inverter", "a rectifier", "an amplifier"], 1,
     "It inverts its single input, and its symbol carries a small circle at the output."),

    ("A NAND gate gives an output of 0 when",
     ["A = 0, B = 0", "A = 1, B = 0", "A = 0, B = 1", "A = 1, B = 1"], 3,
     "NAND is AND followed by NOT, so it is 0 only in the one case where AND would be 1."),

    ("A NOR gate is the combination of",
     ["an AND gate and a NOT gate", "an OR gate and a NOT gate", "two NOT gates", "two AND gates"], 1,
     "NOR is OR with its output inverted, which is why its output is 1 only when both inputs are 0."),

    ("The number of rows in a truth table for a gate with four inputs is",
     ["4", "8", "16", "32"], 2,
     "$2^4 = 16$. The number of combinations doubles with each extra input."),

    ("A gate gives 1 only when its two inputs are different. It is",
     ["an AND gate", "an OR gate", "an exclusive-OR gate", "a NAND gate"], 2,
     "The exclusive-OR is 1 for 01 and 10 and 0 for 00 and 11 — the gate that detects a difference."),

    ("Logic gates are built from",
     ["resistors only", "transistors", "capacitors only", "diodes only"], 1,
     "Each gate is a small arrangement of transistors switching each other, which is why a modern chip holds millions of them."),

    ("In a logic circuit, a voltage of 0.2 V on an input is read as",
     ["logic 1", "logic 0", "a fault", "an analogue value"], 1,
     "Digital circuits define bands: a low voltage is logic 0 and a high voltage (near the supply) is logic 1, whatever the exact figure."),

    ("A diode in reverse bias shows",
     ["a very large current", "a very small leakage current", "no resistance", "a negative resistance"], 1,
     "Only a leakage current of microamps flows until the reverse voltage reaches breakdown, which is why a diode can be used as a one-way valve."),

    ("The characteristic curve of a diode is drawn with",
     ["current on the vertical axis and p.d. on the horizontal axis", "p.d. on the vertical axis and current horizontal", "power against time", "resistance against current"], 0,
     "The forward part of the curve stays near zero until about 0.7 V and then rises steeply; the reverse part stays near zero."),

    ("A photodiode is a diode that",
     ["emits light", "conducts better when light falls on it", "stores charge", "rectifies at high frequency only"], 1,
     "Light creates extra electron–hole pairs in the junction, so the reverse leakage current rises with the illumination."),

    ("An LED emits light when",
     ["reverse biased", "forward biased and carriers recombine", "heated", "cooled"], 1,
     "Electrons falling into holes release energy as photons; the colour is set by the size of the junction's energy gap."),

    ("The resistance of a thermistor with a negative temperature coefficient",
     ["rises as it warms", "falls as it warms", "does not change", "falls as it cools"], 1,
     "Heat frees more carriers in the semiconductor, so the resistance falls — the opposite of a metal wire."),

    ("A transistor switch driving a lamp needs a base resistor to",
     ["increase the gain", "limit the base current", "protect the lamp", "change the supply frequency"], 1,
     "Without it the base–emitter junction would draw far too much current and the transistor would be destroyed."),

    ("A Zener diode is normally used",
     ["forward biased as a rectifier", "reverse biased as a voltage reference", "as an amplifier", "as a switch"], 1,
     "It breaks down at a precise reverse voltage and holds it, which makes it a simple voltage regulator."),

    ("An X-ray tube is evacuated so that",
     ["the X-rays can escape", "the electrons are not stopped by air molecules on the way to the target", "the target stays cool", "the tube is lighter"], 1,
     "Any gas in the tube would scatter the electron beam and produce stray ionisation before it reached the target."),

    ("The electrons in a cathode-ray tube are focused by",
     ["the glass walls", "electric or magnetic fields", "the vacuum", "gravity"], 1,
     "Coils or plates act as a lens, concentrating the beam onto a small spot on the screen."),

    ("The time base of an oscilloscope is applied to",
     ["the vertical plates", "the horizontal plates", "the cathode", "the anode"], 1,
     "The horizontal sweep moves the spot steadily across the screen so that the vertical deflection becomes a graph against time."),

    ("A diode is connected in series with a 230 V a.c. supply and a lamp. The lamp",
     ["receives the full a.c. wave", "receives only alternate half-cycles and lights dimly", "does not light at all", "burns out at once"], 1,
     "Half-wave rectification halves the energy delivered, and the lamp runs at roughly half brightness — the classic demonstration of a diode."),

    ("A p–n junction is formed by",
     ["joining two metals", "joining p-type and n-type material", "doping a crystal twice", "heating a semiconductor in air"], 1,
     "Where the two meet, electrons and holes diffuse and neutralise, leaving the depletion layer and its barrier."),

    ("If a transistor's collector current is 20 mA and its emitter current 20.2 mA, the base current is",
     ["0.2 mA", "0.2 µA", "2.0 mA", "40.2 mA"], 0,
     "$I_b = I_e - I_c = 0.2$ mA, about one hundredth of the collector current — consistent with a gain of about 100."),
]
