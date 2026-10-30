#import "template.typ": *

#current-chapter.update("Chapter 4: Electronics")

#pagebreak()

#chapter-opener(
  4,
  "Electronics",
  subtitle: "Thermionic Emission, Semiconductors and Doping, the p-n Junction Diode, Rectification, the Transistor, and Logic Gates",
  syllabus-ref: "Sec. C • Electronics",
  utme-weight: "3 Qs every year",
  running: "Electronics",
)

#focus-radar(
  objectives: (
    "Explain thermionic emission and the production of an electron beam.",
    "Distinguish conductors, insulators and semiconductors, and describe doping.",
    "Describe the action of a p-n junction diode in forward and reverse bias.",
    "Explain half-wave and full-wave rectification.",
    "Describe the transistor as an amplifier and as a switch, and use $I_c = beta I_b$.",
    "Draw the symbols and truth tables of the AND, OR and NOT gates.",
  ),
  hotspots: (
    "“The current gain of a transistor with $I_b = 50$ µA and $I_c = 3.0$ mA is …” — 60, and the microamps must be converted.",
    "“A diode is connected in series with a 100 Ω resistor across 6 V. The current is …” — 53 mA, after subtracting the 0.7 V drop.",
    "“The output of an AND gate with inputs 1 and 0 is …” — 0, because *both* must be 1.",
    "“A semiconductor's resistance falls as it is heated because …” — more charge carriers are freed.",
    "“Four diodes in a bridge rectifier give …” — full-wave rectification.",
  ),
  trap-summary: "Three slips. (1) Treating the diode as a resistor: it drops about 0.7 V in forward bias and then conducts, so the current is $(V - 0.7)\/R$, not $V\/R$. (2) Mixing microamps and milliamps: $I_b$ is usually in µA and $I_c$ in mA, so convert both before dividing. (3) Reading a NOT gate as a buffer: the little circle at the output means invert, so an input of 1 gives an output of 0.",
)

// ============================================================================
== 4.1 Thermionic Emission and the Electron Beam

Metals contain free electrons, but at room temperature they cannot escape the surface. Heat a metal wire to about 1000 K and the most energetic electrons gain enough energy to leave it altogether. This is *thermionic emission*, and it is the source of the electron beam in every cathode-ray tube, television tube and electron microscope.

#concept-box("Thermionic emission")[
  *Thermionic emission* is the emission of electrons from the surface of a hot metal. It happens because the electrons gain enough thermal energy to overcome the work function of the metal.

  + The emitter is the *cathode*, and it is heated by a filament current.
  + A positive *anode* attracts the electrons and accelerates them; a hole in the anode lets a narrow beam through.
  + The energy given to each electron is $e V$, where $V$ is the accelerating p.d., so $1\/2 m v^2 = e V$.
]

#diagram-fig("diagrams/ch04_thermionic.svg",
  "The electron gun. Electrons boiled off a heated cathode are accelerated through a p.d. V and formed into a beam, which is then deflected by the field between two plates — the working principle of the cathode-ray oscilloscope.", width: 100%)

*The cathode-ray oscilloscope.* The beam passes between two pairs of deflecting plates: one pair deflects it horizontally (the time base) and the other vertically (the signal). Where the beam strikes the fluorescent screen it makes a bright spot, and the position of the spot is a graph of voltage against time. Two facts about the tube are examinable: the beam is deflected *towards* the positive plate, because electrons are negative; and the deflection grows with the deflecting p.d. and falls as the accelerating p.d. rises, because a faster electron spends less time between the plates.

#worked-example(
  1,
  "The speed of an electron in a beam",
  [Electrons are accelerated from rest through a p.d. of 2000 V. Taking $e = 1.6 times 10^(-19)$ C and $m = 9.1 times 10^(-31)$ kg, find (a) the energy gained by each electron and (b) its speed on reaching the anode.],
  [
    *(a)* $W = e V = 1.6 times 10^(-19) times 2000 = 3.2 times 10^(-16)$ J.

    *(b)* $1\/2 m v^2 = e V$, so $v = sqrt((2 e V)\/m) = sqrt((2 times 3.2 times 10^(-16))\/(9.1 times 10^(-31)))$

    $= sqrt(7.0 times 10^14) = 2.6 times 10^7$ m s⁻¹.

    *Check.* That is about a tenth of the speed of light, which is why the simple kinetic-energy formula is still good enough here — at 20 kV the electron would be fast enough for relativistic corrections to matter. The energy in electron-volts is simply 2000 eV, which is the point of the unit: one electron-volt is the energy an electron gains through one volt.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 4.2 Semiconductors and Doping

A conductor has free electrons at every temperature. An insulator has none that can move. A *semiconductor* sits between the two, and its behaviour can be changed out of all recognition by adding a trace of another element.

#concept-box("Intrinsic and extrinsic semiconductors")[
  A pure semiconductor — silicon or germanium — is called *intrinsic*. It has few free carriers, so its resistance is high, and the resistance *falls* as it warms because heat frees more carriers. That is the opposite of a metal.

  + *n-type:* doped with an element of higher valency (arsenic, phosphorus), which donates extra electrons. The carriers are electrons.
  + *p-type:* doped with an element of lower valency (boron, indium), which leaves a missing electron — a *hole*. The carriers are holes, which behave as positive charges.

  Doping adds carriers, not charge: the crystal as a whole stays neutral.
]

#diagram-fig("diagrams/ch04_junction.svg",
  "Doped silicon, and the junction between the two kinds. Electrons and holes diffuse across the boundary and leave a thin depletion layer with no free carriers, which acts as a barrier of about 0.7 V in silicon.", width: 100%)

*The p-n junction.* Join a p-type and an n-type region in the same crystal and the boundary becomes a *junction*. Electrons from the n-side and holes from the p-side diffuse across it and neutralise each other, leaving a thin layer on each side with no free carriers. That *depletion layer* is a barrier: a p.d. of about 0.7 V for silicon and 0.3 V for germanium stands across it.

// ============================================================================
== 4.3 The Diode and Rectification

A diode is a single p-n junction with leads attached. Its whole behaviour follows from the barrier: applied voltage one way lowers the barrier and current flows; applied the other way raises it and the diode blocks.

#formula-box("The diode, in two directions")[
  + *Forward bias* — the p-side is connected to the positive terminal. The barrier is lowered, and once the applied p.d. exceeds about 0.7 V (silicon) the current rises steeply. The diode drops about 0.7 V, so the current through a series resistor is $I = (V - 0.7)\/R$.
  + *Reverse bias* — the barrier is raised and only a tiny leakage current flows, of the order of microamps. Push the reverse p.d. far enough and the diode breaks down, which is either destruction or, in a Zener diode, a useful regulator.
]

#diagram-fig("diagrams/ch04_diode.svg",
  "The characteristic of a silicon diode. Forward, almost nothing happens until about 0.7 V and then the current climbs almost vertically; reverse, the current is too small to see on this scale. The graph is not a straight line, so a diode does not obey Ohm's law.", width: 84%)

#worked-example(
  2,
  "A diode in series with a resistor",
  [A silicon diode is connected in series with a 100 $Omega$ resistor across a 6.0 V supply, with the diode forward biased. Taking the forward drop to be 0.7 V, find (a) the current in the circuit and (b) the p.d. across the resistor.],
  [
    *(a)* The diode takes 0.7 V, so the resistor has $6.0 - 0.7 = 5.3$ V across it.

    $I = V \/ R = 5.3 \/ 100 = 0.053$ A $= 53$ mA.

    *(b)* 5.3 V, by subtraction — and $I R = 0.053 times 100 = 5.3$ V confirms it.

    *Check.* A candidate who ignores the diode gets $6.0\/100 = 60$ mA, about 13 % too high. That is exactly how the examiner builds the wrong options: the arithmetic is right, the model of the component is wrong.
  ],
  tier: "FOUNDATION",
)

*Rectification.* Mains is alternating, but most electronic circuits need direct current. A diode passes only the half-cycles that forward-bias it, so the output is a series of pulses — *half-wave rectification*. A *bridge* of four diodes steers both half-cycles the same way round the load, giving *full-wave rectification* with twice the frequency of pulses. A capacitor across the output then smooths the pulses into a nearly steady d.c.

#diagram-fig("diagrams/ch04_rectifier.svg",
  "Rectification. One diode passes alternate half-cycles and blocks the rest; a bridge of four diodes turns the negative half-cycles round instead, so the output pulses twice as often. Smoothing capacitors are what turn either into the steady d.c. a circuit needs.", width: 84%)

#trap-box("A diode is not a one-way valve with no cost")[
  The forward drop of 0.7 V is small in a 240 V circuit and enormous in a 1.5 V one: a diode in a 1.5 V circuit leaves less than a volt for the load. That is why germanium diodes (0.3 V) were once preferred for small signals, and why a real rectifier wastes a few per cent of the power as heat in its diodes.
]

// ============================================================================
== 4.4 The Transistor

A transistor is two p-n junctions back to back, with three connections: the *emitter*, the *base* and the *collector*. Its importance is that a small current into the base controls a large current through the collector — a small signal controls a big one, which is amplification.

#concept-box("The transistor as an amplifier")[
  In the common-emitter connection the emitter is shared, the base current $I_b$ is the input and the collector current $I_c$ is the output. The two are linked by the *current gain*:

  $I_c = beta I_b$, and $I_e = I_b + I_c$

  where $beta$ is typically 50 to 300. A base current of a few microamps therefore switches a collector current of milliamps, and a small change at the base produces a large change at the collector.

  + *As a switch* — no base current, no collector current (off); a few microamps of base current, full collector current (on). This is how a transistor drives a lamp or a relay from a logic signal.
  + *As an amplifier* — a small alternating base current produces a large alternating collector current, which is the signal, magnified.
]

#worked-example(
  3,
  "The current gain of a transistor",
  [In a common-emitter circuit the base current is 50 µA and the collector current is 3.0 mA. Find (a) the current gain and (b) the emitter current.],
  [
    Convert both: $I_b = 50 times 10^(-6)$ A and $I_c = 3.0 times 10^(-3)$ A.

    *(a)* $beta = I_c \/ I_b = (3.0 times 10^(-3))\/(50 times 10^(-6)) = 60$.

    *(b)* $I_e = I_b + I_c = 3.0$ mA $+ 0.050$ mA $= 3.05$ mA, about 3.1 mA.

    *Check.* The gain is a pure number — no units — and 60 is a sensible value for a small-signal transistor. The emitter current is always very slightly larger than the collector current, because the base current has to come out somewhere; a candidate who writes $I_e = I_c$ loses the marks for part (b) and nothing else.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 4.5 Logic Gates

Digital electronics reduces every decision to two states: high or low, 1 or 0, on or off. Three gates are enough to build any decision at all, and the examiner asks about those three, their truth tables and their symbols.

#concept-box("AND, OR and NOT")[
  + *AND* — the output is 1 only when *both* inputs are 1. Symbol: a D-shape.
  + *OR* — the output is 1 when *either* input, or both, is 1. Symbol: a curved shield.
  + *NOT* — the output is the opposite of the input, with one input only. Symbol: a triangle with a small circle at the output.
]

#diagram-fig("diagrams/ch04_logic.svg",
  "The three gates, their symbols and their truth tables. The little circle on the NOT gate is the whole of its behaviour: it inverts. NAND and NOR are these gates with the circle added, and any circuit can be built from NAND gates alone.", width: 100%)

#worked-example(
  4,
  "Reading a combination of gates",
  [The inputs A = 1 and B = 0 are taken to an AND gate, and the output of that gate is taken to a NOT gate. Find the final output, and state what the combination computes.],
  [
    The AND gate output is 1 only when both inputs are 1, so with A = 1 and B = 0 its output is 0.

    The NOT gate inverts that: the final output is 1.

    So the combination gives 1 unless both inputs are 1 — it is a *NAND* gate.

    *Check.* Build the truth table for all four input pairs: (0,0) → AND 0 → 1; (0,1) → 0 → 1; (1,0) → 0 → 1; (1,1) → 1 → 0. Only the last row gives 0, which is the definition of NAND. Whenever a question combines two gates, write the four rows out; it takes twenty seconds and it cannot go wrong.
  ],
  tier: "UTME STANDARD",
)

#shortcut-box("Gate questions in twenty seconds")[
  + Write the four input pairs in a column: 00, 01, 10, 11. Fill each gate's output left to right.
  + *AND* gives a single 1 in its column; *OR* gives a single 0.
  + A circle on the output inverts the column.
  + If a question gives voltages instead of 1s and 0s, the threshold is what matters: a high input is "1" whatever its exact value.
]

#worked-example(
  5,
  "Driving a relay with a transistor",
  [A transistor of current gain 80 is used as a switch to operate a relay whose coil has a resistance of 240 Ω and needs 40 mA to close. The coil is connected to a 12 V supply, and the base is driven from a 5.0 V supply through a resistor. The base–emitter p.d. is 0.7 V when the transistor is on. Find (a) the collector current, (b) the base current needed and (c) the value of the base resistor.],
  [
    *(a)* With the transistor on it is almost a short circuit, so the coil has the full 12 V across it:
    $I_c = 12\/240 = 0.050$ A $= 50$ mA.

    That is above the 40 mA the relay needs, so the relay closes with the transistor fully on.

    *(b)* $I_b = I_c \/ beta = 50 times 10^(-3) \/ 80 = 6.3 times 10^(-4)$ A $= 0.63$ mA.

    *(c)* $R_b = (5.0 - 0.7) \/ (0.63 times 10^(-3)) = 6.8$ kΩ.

    *Check.* Two things are worth carrying from this. First, the base circuit supplies about half a milliamp while the collector carries fifty, which is why a transistor can switch a load a hundred times larger than the signal that controls it. Second, the *collector* current is set by the supply and the load, not by the base current: the base current only has to be large enough to keep the transistor on, and $beta$ says how much that is.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: electronics.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Electronics is the control of electrons in a vacuum or in a crystal. Heat a metal and electrons boil off it — thermionic emission — and a p.d. then accelerates them into a beam that can be deflected and focused, which is the cathode-ray tube and the electron gun. A pure semiconductor is a poor conductor, but doping it with a pentavalent element gives n-type material with spare electrons and a trivalent one gives p-type material full of holes; join the two and you have a p–n junction, with a depletion layer and a barrier of about 0.7 V in silicon. That barrier is a diode: it conducts one way and blocks the other, which is rectification, and a capacitor across the output smooths the pulses into steady d.c. Three layers give a transistor, where a tiny base current controls a large collector current, $I_c = beta I_b$ and $I_e = I_b + I_c$; the same device is a switch or an amplifier depending on how it is biased. Take the two states of a digital signal, 0 and 1, and the gates follow: AND gives 1 only when both inputs are high, OR gives 1 when either is, NOT inverts — and NAND and NOR are those gates with the output turned upside down.
  ]
]

// ============================================================================
== 4.6 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [Thermionic emission is the emission of], [protons from a hot metal], [photons from a cold metal], [ions from a gas], [electrons from a hot metal])
#mcq(2, [A semiconductor is doped with a pentavalent element. The material becomes], [p-type, with holes as carriers], [n-type, with electrons as carriers], [an insulator], [a conductor with no carriers])
#mcq(3, [A transistor has a base current of 40 µA and a collector current of 2.0 mA. Its current gain is], [20], [80], [50], [500])
#mcq(4, [The output of an OR gate is 0 only when], [both inputs are 0], [both inputs are 1], [one input is 1], [the inputs are equal])

#answer-key-grid(("D", "B", "C", "A"))

#answer-notes((
  ("D", [thermionic emission is the boiling off of electrons from a heated cathode; the anode then accelerates them.]),
  ("B", [a pentavalent dopant has one more electron than silicon needs, so it donates free electrons and the material becomes n-type.]),
  ("C", [$beta = I_c\/I_b = (2.0 times 10^(-3))\/(40 times 10^(-6)) = 50$. Both currents must be in the same unit before dividing.]),
  ("A", [an OR gate gives 1 when either input is 1, so it gives 0 only in the single case where both inputs are 0.]),
))

#chapter-checklist("Before you leave Chapter 4", (
  [Explain thermionic emission and how an electron beam is produced and deflected.],
  [Distinguish a conductor, an insulator and a semiconductor, and say how doping changes the last one.],
  [Describe a diode in forward and reverse bias, and use the 0.7 V drop.],
  [Explain half-wave and full-wave rectification.],
  [Use $I_c = beta I_b$ and $I_e = I_b + I_c$ with the units converted.],
  [Draw the three gate symbols and their truth tables from memory.],
))

#concept-box("Carry this into Chapter 5")[
  Every device in this chapter depends on the electron, and the electron's charge was measured long before anyone could see one. Chapter 5 goes back to that measurement, then to the atom itself: energy levels, line spectra, and the photoelectric effect, where light behaves as a stream of particles and the electron as a wave.
]

#include "drill_ch04.typ"
