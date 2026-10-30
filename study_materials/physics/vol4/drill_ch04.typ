#import "template.typ": *


#current-chapter.update("Chapter 4: Electronics — Drills")

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 16pt,
)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[END-OF-CHAPTER DRILL]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Chapter 4 Practice Set]
  #v(3pt)
  #text(font: "DejaVu Sans", size: 9.8pt, fill: rgb("#CBD5E1"))[
    40 exam-standard questions on electronics. Attempt every question before
    turning to the key, then read the solution for every question — including the ones
    you answered correctly.
  ]
]

#v(4pt)

== 4.7 Chapter 4 Practice Drill — 40 Questions

40 questions graded in the order the CBT engine is likely to meet them. Allow 44 minutes; the key and a full solution for every question follow.

#mcq(1, [Thermionic emission is the emission of],
  [protons from a hot metal],
  [photons from a cold metal],
  [ions from a gas],
  [electrons from a hot metal]
)

#mcq(2, [In a cathode-ray tube, the beam is deflected],
  [towards the positive plate],
  [towards the negative plate],
  [along the tube axis],
  [not at all]
)

#mcq(3, [The energy gained by an electron accelerated through a p.d. of 2000 V is],
  [1.6 × 10⁻¹⁶ J],
  [3.2 × 10⁻¹⁶ J],
  [3.2 × 10⁻¹⁹ J],
  [2000 J]
)

#mcq(4, [The resistance of a pure semiconductor falls as its temperature rises because],
  [its resistivity is negative],
  [its length decreases],
  [more charge carriers are freed],
  [the ions stop moving]
)

#mcq(5, [A semiconductor doped with a pentavalent element becomes],
  [n-type, with electrons as the majority carriers],
  [intrinsic],
  [p-type, with holes as the majority carriers],
  [an insulator]
)

#mcq(6, [A semiconductor doped with a trivalent element becomes],
  [p-type, with holes as the majority carriers],
  [n-type, with electrons as the majority carriers],
  [magnetised],
  [a perfect insulator]
)

#mcq(7, [The depletion layer of a p-n junction],
  [contains an excess of free electrons],
  [is where the current is largest],
  [is a region with no free carriers and a small barrier p.d.],
  [is always 0.3 V wide]
)

#mcq(8, [A diode is forward biased when],
  [the p-side is connected to the positive terminal],
  [the p-side is connected to the negative terminal],
  [no p.d. is applied],
  [it is heated]
)

#mcq(9, [A silicon diode in series with a 100 Ω resistor is connected to 6.0 V, forward biased. The current is about],
  [53 mA],
  [600 mA],
  [60 mA],
  [6.0 mA]
)

#mcq(10, [In reverse bias a diode],
  [becomes a short circuit],
  [conducts only a tiny leakage current],
  [conducts heavily],
  [behaves as a resistor of 0.7 Ω]
)

#mcq(11, [The graph of current against p.d. for a diode is],
  [a straight line not through the origin],
  [almost zero in reverse and rising steeply in forward],
  [a straight line through the origin],
  [a circle]
)

#mcq(12, [Half-wave rectification uses],
  [four diodes],
  [three diodes],
  [one diode],
  [two diodes]
)

#mcq(13, [Full-wave rectification in a bridge rectifier uses],
  [two diodes],
  [one diode],
  [four diodes],
  [six diodes]
)

#mcq(14, [A capacitor is connected across the output of a rectifier in order to],
  [increase the frequency],
  [smooth the pulses into a steadier d.c.],
  [reduce the voltage to zero],
  [rectify the current]
)

#mcq(15, [A transistor is described as a current amplifier because],
  [a small base current controls a large collector current],
  [it has three terminals],
  [it increases the charge],
  [it stores energy]
)

#mcq(16, [A transistor has a base current of 40 µA and a collector current of 2.0 mA. Its current gain is],
  [20],
  [80],
  [50],
  [500]
)

#mcq(17, [For a transistor, the emitter current is],
  [the sum of the base and collector currents],
  [equal to the collector current],
  [always zero],
  [the difference of the base and collector currents]
)

#mcq(18, [With a current gain of 100 and a base current of 30 µA, the collector current is],
  [0.30 mA],
  [3.0 mA],
  [300 mA],
  [30 mA]
)

#mcq(19, [A transistor used as a switch is],
  [always conducting],
  [either off or fully on],
  [biased in the middle of its characteristic],
  [used without a base connection]
)

#mcq(20, [The output of an AND gate is 1 only when],
  [either input is 1],
  [the inputs are different],
  [both inputs are 0],
  [both inputs are 1]
)

#mcq(21, [The output of an OR gate is 0 only when],
  [both inputs are 0],
  [the inputs are different],
  [one input is 1],
  [both inputs are 1]
)

#mcq(22, [A NOT gate with an input of 1 gives an output of],
  [1],
  [0],
  [high impedance],
  [2]
)

#mcq(23, [The symbol for an AND gate is],
  [a curved shield],
  [a D-shape],
  [a rectangle],
  [a triangle with a circle]
)

#mcq(24, [An AND gate is followed by a NOT gate. With inputs 1 and 0 the output is],
  [0],
  [1],
  [undefined],
  [2]
)

#mcq(25, [A two-input gate gives an output of 1 for the inputs 00, 01 and 10, and 0 for 11. The gate is],
  [NAND],
  [OR],
  [AND],
  [NOR]
)

#mcq(26, [The number of rows in the truth table of a two-input gate is],
  [2],
  [8],
  [4],
  [3]
)

#mcq(27, [The number of rows in the truth table of a three-input gate is],
  [3],
  [6],
  [8],
  [9]
)

#mcq(28, [A logic gate whose output is the inverse of an AND gate is called],
  [XOR],
  [NOR],
  [NOT],
  [NAND]
)

#mcq(29, [An X-ray tube produces X-rays when],
  [a magnet is rotated],
  [a gas is heated],
  [light strikes a metal],
  [fast electrons are stopped by a heavy metal target]
)

#mcq(30, [A thermionic emitter in a valve or a cathode-ray tube is made of tungsten because],
  [it can be heated to a high temperature without melting],
  [it has a high resistance],
  [it is cheap],
  [it is an insulator]
)

#mcq(31, [In a cathode-ray oscilloscope the time base],
  [deflects the beam vertically],
  [deflects the beam horizontally],
  [accelerates the electrons],
  [focuses the beam]
)

#mcq(32, [Doping a semiconductor],
  [adds charge carriers without adding net charge],
  [removes electrons permanently],
  [adds charge to the crystal],
  [makes it an insulator]
)

#mcq(33, [A light-emitting diode emits light when],
  [it is heated],
  [it is cooled],
  [electrons and holes recombine in forward bias],
  [it is reverse biased]
)

#mcq(34, [The forward voltage drop of a germanium diode is about],
  [3.0 V],
  [7.0 V],
  [0.3 V],
  [0.7 V]
)

#mcq(35, [A transistor and a diode are similar in that both],
  [are made of copper],
  [amplify signals],
  [have two terminals],
  [are made from p-n junctions]
)

#mcq(36, [A NOR gate with inputs 0 and 1 gives],
  [1],
  [high],
  [2],
  [0]
)

#mcq(37, [Increasing the base current of a transistor in its active region],
  [increases the collector current proportionally],
  [has no effect],
  [turns it into a diode],
  [decreases the collector current]
)

#mcq(38, [Which is *not* an advantage of a transistor over a thermionic valve?],
  [it needs no heater supply],
  [it is smaller],
  [it can handle much greater power],
  [it operates at low voltage]
)

#mcq(39, [A diode is connected across a 12 V a.c. supply in series with a lamp. The lamp],
  [never lights],
  [lights on both half-cycles],
  [lights continuously at half brightness],
  [lights on alternate half-cycles]
)

#mcq(40, [An intrinsic semiconductor at absolute zero would],
  [emit light],
  [behave as an insulator],
  [be magnetic],
  [be a perfect conductor]
)

#shortcut-box("Before you turn to the key")[
  + Mark the whole set in *one pass* — every answer, right or wrong — before you read a single solution.
  + Write the score at the top of the page, because a drill you cannot compare with the last one tells you nothing.
  + Then read *every* solution, including the ones you got right: the second method is in the solution, not in the chapter.
]

#v(6pt)

#current-chapter.update("Chapter 4: Electronics — Drills")

=== Answer Key and Score Bands

#answer-key-grid((
  "D", "A", "B", "C", "A", "A", "C", "A", "A", "B",
  "B", "C", "C", "B", "A", "C", "A", "B", "B", "D",
  "A", "B", "B", "B", "A", "C", "C", "D", "D", "A",
  "B", "A", "C", "C", "D", "D", "A", "C", "D", "B",
))

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[MARK YOURSELF]
  #v(4pt)
  #table(
    columns: (0.9fr, 2.6fr),
    inset: 4pt,
    align: (left + horizon, left + horizon),
    stroke: none,
    [*34–40*], [Secure. Move on to the next chapter, then return to this drill in a fortnight.],
    [*28–33*], [Developing. Every solution names the concept, so reread the chapter section that the missed questions share.],
    [*0–27*], [Revise before re-testing. Reread the chapter, then redo this drill from the beginning.],
  )
]

#[
  #set text(size: 9.15pt)
  #set par(leading: 0.66em, spacing: 0.72em)

  #block(breakable: false)[
  === Complete Solutions
  #sol-item(1, "D", dense: true, pad: 4.22pt)[
    Heating a metal gives its free electrons enough thermal energy to escape the surface. The emitter is called the cathode.
  ]

  #sol-item(2, "A", dense: true, pad: 4.22pt)[
    The beam is a stream of electrons, so it is attracted towards the plate at a positive potential.
  ]
  ]

  #sol-item(3, "B", dense: true, pad: 4.22pt)[
    $W = e V = 1.6 times 10^(-19) times 2000 = 3.2 times 10^(-16)$ J, which is 2000 eV.
  ]

  #sol-item(4, "C", dense: true, pad: 4.22pt)[
    Heat frees electrons from their bonds, and the extra carriers outweigh the extra scattering — the opposite of the behaviour of a metal.
  ]

  #sol-item(5, "A", dense: true, pad: 4.22pt)[
    A pentavalent atom has one more valence electron than silicon needs, so it donates a free electron: n-type, electrons as carriers.
  ]

  #sol-item(6, "A", dense: true, pad: 4.22pt)[
    A trivalent atom is one electron short, which leaves a hole — a vacancy that behaves as a positive carrier. That is p-type material.
  ]

  #sol-item(7, "C", dense: true, pad: 4.22pt)[
    Diffusion carries carriers across the junction and neutralises them, leaving a thin layer that acts as a barrier — about 0.7 V in silicon.
  ]

  #sol-item(8, "A", dense: true, pad: 4.22pt)[
    Forward bias lowers the barrier, so current flows once the applied p.d. exceeds about 0.7 V.
  ]

  #sol-item(9, "A", dense: true, pad: 4.22pt)[
    The diode takes about 0.7 V, so $I = (6.0 - 0.7)\/100 = 0.053$ A $= 53$ mA. Ignoring the diode gives 60 mA.
  ]

  #sol-item(10, "B", dense: true, pad: 4.22pt)[
    Reverse bias raises the barrier, so only a leakage current of microamps flows until breakdown.
  ]

  #sol-item(11, "B", dense: true, pad: 4.22pt)[
    A diode is not ohmic: it conducts almost nothing one way and heavily the other once past the knee at 0.7 V.
  ]

  #sol-item(12, "C", dense: true, pad: 4.22pt)[
    A single diode passes one half of each cycle and blocks the other, so the output is a train of pulses at the supply frequency.
  ]

  #sol-item(13, "C", dense: true, pad: 4.22pt)[
    Four diodes steer both half-cycles round the load in the same direction, so the output pulses twice per cycle.
  ]

  #sol-item(14, "B", dense: true, pad: 4.22pt)[
    The capacitor charges on the peaks and discharges between them, filling in the gaps and leaving a nearly steady d.c.
  ]

  #sol-item(15, "A", dense: true, pad: 4.22pt)[
    $I_c = beta I_b$: a few microamps at the base give milliamps at the collector, so a small signal controls a large one.
  ]

  #sol-item(16, "C", dense: true, pad: 4.22pt)[
    $beta = I_c \/ I_b = 2.0 times 10^(-3) \/ 40 times 10^(-6) = 50$. Both currents must be in the same unit.
  ]

  #sol-item(17, "A", dense: true, pad: 4.22pt)[
    $I_e = I_b + I_c$, so the emitter current is fractionally the largest — the base current has to go somewhere.
  ]

  #sol-item(18, "B", dense: true, pad: 4.22pt)[
    $I_c = beta I_b = 100 times 30 times 10^(-6) = 3.0 times 10^(-3)$ A $= 3.0$ mA.
  ]

  #sol-item(19, "B", dense: true, pad: 4.22pt)[
    As a switch it is driven between no base current (off) and enough base current for saturation (on), which is how it drives a lamp or relay.
  ]

  #sol-item(20, "D", dense: true, pad: 4.22pt)[
    AND requires all its inputs to be high. With two inputs, three of the four input combinations give 0.
  ]

  #sol-item(21, "A", dense: true, pad: 4.22pt)[
    OR gives 1 if any input is 1, so the only way to get 0 is for every input to be 0.
  ]

  #sol-item(22, "B", dense: true, pad: 4.22pt)[
    NOT inverts: it is the only gate with a single input, and its symbol carries a small circle at the output.
  ]

  #sol-item(23, "B", dense: true, pad: 4.22pt)[
    The D-shape is AND; the curved shield is OR; the triangle with a circle is NOT.
  ]

  #sol-item(24, "B", dense: true, pad: 4.22pt)[
    AND gives 0, and NOT inverts it to 1. The combination is a NAND gate, whose output is 0 only when both inputs are 1.
  ]

  #sol-item(25, "A", dense: true, pad: 4.22pt)[
    The output is 0 only in the single case where both inputs are 1, which is the negation of AND — a NAND gate.
  ]

  #sol-item(26, "C", dense: true, pad: 4.22pt)[
    Each input has two states, so two inputs give $2 times 2 = 4$ combinations: 00, 01, 10 and 11.
  ]

  #sol-item(27, "C", dense: true, pad: 4.22pt)[
    $2^3 = 8$ combinations. The number doubles with each extra input.
  ]

  #sol-item(28, "D", dense: true, pad: 4.22pt)[
    NAND is AND followed by NOT, and it is the universal gate — any other gate can be built from NANDs alone.
  ]

  #sol-item(29, "D", dense: true, pad: 4.22pt)[
    The kinetic energy of the electrons is converted into electromagnetic radiation of very short wavelength when they are decelerated in the target.
  ]

  #sol-item(30, "A", dense: true, pad: 4.22pt)[
    Tungsten has the highest melting point of any metal, so it can run hot enough to emit electrons copiously without melting or evaporating.
  ]

  #sol-item(31, "B", dense: true, pad: 4.22pt)[
    The time base sweeps the spot across the screen at a steady rate, so the horizontal axis becomes time and the vertical deflection becomes the signal.
  ]

  #sol-item(32, "A", dense: true, pad: 4.22pt)[
    The dopant atoms sit in the lattice and each donates a carrier or a hole, but the crystal remains electrically neutral overall.
  ]

  #sol-item(33, "C", dense: true, pad: 4.22pt)[
    In forward bias, electrons crossing the junction fall into holes and release the energy difference as a photon — the colour is set by the semiconductor's band gap.
  ]

  #sol-item(34, "C", dense: true, pad: 4.22pt)[
    Germanium junctions have a lower barrier (about 0.3 V) than silicon (about 0.7 V), which is why germanium was once preferred for small signals.
  ]

  #sol-item(35, "D", dense: true, pad: 4.22pt)[
    A diode is one p-n junction; a transistor is two junctions back to back with three connections.
  ]

  #sol-item(36, "D", dense: true, pad: 4.22pt)[
    OR gives 1, and NOT inverts it to 0. NOR gives 1 only when both inputs are 0.
  ]

  #sol-item(37, "A", dense: true, pad: 4.22pt)[
    In the active region $I_c = beta I_b$, so the collector current follows the base current multiplied by the gain.
  ]

  #sol-item(38, "C", dense: true, pad: 4.22pt)[
    A valve still wins for very high power, but a transistor is smaller, cooler and works from a few volts.
  ]

  #sol-item(39, "D", dense: true, pad: 4.22pt)[
    The diode conducts only when forward biased, so the lamp receives one pulse per cycle — half-wave rectification.
  ]

  #sol-item(40, "B", dense: true, pad: 4.22pt)[
    With no thermal energy there are no free carriers, so a pure semiconductor at 0 K is effectively an insulator.
  ]

]

