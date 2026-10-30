#import "template.typ": *

#current-chapter.update("Mock Examination 1")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Mock Examination 1]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[MOCK EXAMINATION 1]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Full-Syllabus CBT Paper]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Forty questions in forty minutes — the format, the difficulty spread and the topic mix of a real UTME Physics paper on electrostatics, current electricity, magnetism and induction, electronics, atomic physics and radioactivity.]
]

#v(5pt)

+ Attempt *all forty* questions in *forty minutes*. There is no negative marking, so never leave a blank.

+ One minute a question. If a question takes longer than ninety seconds, flag it and return in the final pass.

+ Mark yourself against the key only when the forty minutes have elapsed.

+ Record every miss in the Question Map — it converts a score into a revision plan.

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 8pt,
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[QUESTIONS] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TIME] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40 min]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[MARKING] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[No negatives]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TARGET] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[30 / 40]],
)

== Mock Examination 1 — Questions

#mcq(1, [A capacitor is said to have a capacitance of 1 F when], [it stores 1 J at 1 V], [it passes 1 A at 1 V], [it has plates 1 m apart], [it holds 1 C at 1 V])
#v(7.19pt)

#mcq(2, [The cost of electrical energy is measured in kilowatt-hours because], [power is measured in kilowatts], [resistance is measured in ohms], [energy is power × time], [voltage is measured in kilovolts])
#v(7.19pt)

#mcq(3, [A generator converts], [electrical energy into mechanical energy], [mechanical energy into electrical energy], [heat into work], [chemical energy into heat])
#v(7.19pt)

#mcq(4, [A photodiode is a diode that], [conducts better when light falls on it], [emits light], [stores charge], [rectifies at high frequency only])
#v(7.19pt)

#mcq(5, [The dark lines of the Sun's spectrum are produced when], [hot gas emits light], [dust blocks all light], [the Sun's core cools], [cooler gas absorbs selected wavelengths from a continuous spectrum])
#v(7.19pt)

#mcq(6, [Isotopes of an element differ in the number of], [protons], [neutrons], [electrons in the neutral atom], [energy levels])
#v(7.19pt)

#mcq(7, [The work done in moving a charge of 4.0 C through a p.d. of 20 V is], [5.0 J], [24 J], [80 J], [0.20 J])
#v(7.19pt)

#mcq(8, [A 1.0 kW kettle and a 2.0 kW kettle are both filled with the same amount of water and switched on together. The 2.0 kW kettle boils first because], [it has a smaller resistance and draws more current], [it has a larger resistance], [it delivers energy faster], [it heats the water to a lower temperature])
#v(7.19pt)

#mcq(9, [An a.c. generator produces alternating current because], [it has a commutator], [it uses a weak magnet], [the coil is stationary], [the coil's connections are not reversed, so the e.m.f. reverses each half turn])
#v(7.19pt)

#mcq(10, [The number of rows in a truth table for a gate with four inputs is], [4], [16], [8], [32])
#v(7.19pt)

#mcq(11, [When an electron falls from a higher to a lower energy level, the atom], [absorbs a photon], [gains an electron], [emits a photon], [loses a proton])
#v(7.19pt)

#mcq(12, [The mass defect of a nucleus is], [the difference between its mass and the total mass of its separate nucleons], [the mass of its electrons], [the mass lost in beta decay], [the mass of a neutron])
#v(7.19pt)

#mcq(13, [A charge of 250 µC is], [2.5 × 10⁻⁶ C], [2.5 × 10⁻³ C], [2.5 × 10² C], [2.5 × 10⁻⁴ C])
#v(7.19pt)

#mcq(14, [A resistor obeys Ohm's law with $R = 15$ Ω. When the p.d. is doubled, the resistance], [is unchanged], [doubles], [halves], [falls to zero])
#v(7.19pt)

#mcq(15, [A step-down transformer has 1000 turns on the primary and 50 on the secondary. With 240 V in, the secondary voltage is], [24 V], [12 V], [48 V], [4800 V])
#v(7.19pt)

#mcq(16, [The output of a two-input AND gate is 1 when], [A = 0, B = 0], [A = 1, B = 0], [A = 1, B = 1], [A = 0, B = 1])
#v(7.19pt)

#mcq(17, [The energy of a photon of wavelength 600 nm is about], [6.6 × 10⁻¹⁹ J], [3.3 × 10⁻¹⁹ J], [1.1 × 10⁻²⁷ J], [2.0 × 10⁻¹⁹ J])
#v(7.19pt)

#mcq(18, [The mass number of a nucleus is unchanged by], [both beta and gamma emission], [alpha emission], [beta emission], [gamma emission])
#v(7.19pt)

#mcq(19, [The total capacitance of three 6.0 µF capacitors in parallel is], [2.0 µF], [6.0 µF], [18 µF], [36 µF])
#v(7.19pt)

#mcq(20, [A household circuit is wired in parallel rather than in series so that], [the total resistance is larger], [the current is smaller], [the fuse can be smaller], [each appliance gets the full mains p.d. and can be switched independently])
#v(7.19pt)

#mcq(21, [The e.m.f. induced in a coil can be increased by], [using a stronger magnet], [using fewer turns], [moving the magnet more slowly], [cooling the coil])
#v(7.19pt)

#mcq(22, [A diode is used in a circuit to], [amplify a signal], [allow current in one direction only], [store charge], [change a.c. to a higher voltage])
#v(7.19pt)

#mcq(23, [A photocell is used in a burglar alarm because], [it emits light when warm], [it stores charge], [its resistance changes with light], [it amplifies sound])
#v(7.19pt)

#mcq(24, [The radiation that is stopped by a sheet of paper is], [beta], [gamma], [X-rays], [alpha])
#v(7.19pt)

#mcq(25, [Two charges of +2.0 µC and +8.0 µC are 0.30 m apart. Where is the neutral point?], [0.15 m from the 2.0 µC charge], [0.20 m from the 2.0 µC charge], [0.10 m from the 2.0 µC charge], [0.30 m from the 2.0 µC charge])
#v(7.19pt)

#mcq(26, [Three cells of e.m.f. 1.5 V and internal resistance 0.30 Ω each are joined in series. The battery has], [e.m.f. 1.5 V, resistance 0.90 Ω], [e.m.f. 4.5 V, resistance 0.10 Ω], [e.m.f. 4.5 V, resistance 0.30 Ω], [e.m.f. 4.5 V, resistance 0.90 Ω])
#v(7.19pt)

#mcq(27, [The force on a current-carrying wire in a magnetic field is used directly in], [an electric motor], [a generator], [a transformer], [a capacitor])
#v(7.19pt)

#mcq(28, [An X-ray tube is evacuated so that], [the X-rays can escape], [the electrons are not stopped by air molecules on the way to the target], [the target stays cool], [the tube is lighter])
#v(7.19pt)

#mcq(29, [The de Broglie wavelength of a particle is inversely proportional to its], [mass only], [charge], [momentum], [energy squared])
#v(7.19pt)

#mcq(30, [The energy released in the fission of one uranium-235 nucleus is about], [200 MeV], [200 eV], [2.0 MeV], [200 GeV])
#v(7.19pt)

#mcq(31, [A charge of 8.0 µC is 0.20 m from a charge of 2.0 µC. The force is], [0.72 N], [36 N], [0.36 N], [3.6 N])
#v(7.19pt)

#mcq(32, [An ammeter of very low resistance is connected in parallel with a resistor. The effect is], [no change], [to short-circuit the resistor], [to double the resistance], [to halve the current])
#v(7.19pt)

#mcq(33, [A magnetic field of 0.50 T acts on a 0.20 m wire carrying 3.0 A at 30° to the field. The force is], [0.15 N], [0.30 N], [0.26 N], [0.50 N])
#v(7.19pt)

#mcq(34, [The electrons in a cathode-ray tube are focused by], [the glass walls], [the vacuum], [electric or magnetic fields], [gravity])
#v(7.19pt)

#mcq(35, [The ionisation energy of hydrogen is], [1.5 eV], [3.4 eV], [27.2 eV], [13.6 eV])
#v(7.19pt)

#mcq(36, [After emitting an alpha particle, a nucleus of $attach(upright("U"), tl: 238, bl: 92)$ becomes], [$attach(upright("U"), tl: 234, bl: 92)$], [$attach(upright("Th"), tl: 234, bl: 90)$], [$attach(upright("Th"), tl: 238, bl: 90)$], [$attach(upright("Pu"), tl: 242, bl: 94)$])
#v(7.19pt)

#mcq(37, [A positively charged electroscope is touched with a negatively charged rod. The leaf], [rises further], [stays exactly the same], [falls and then rises], [falls])
#v(7.19pt)

#mcq(38, [A cell of e.m.f. 6.0 V and internal resistance 1.0 Ω is connected to a 2.0 Ω resistor. The current is], [1.5 A], [2.0 A], [3.0 A], [6.0 A])
#v(7.19pt)

#mcq(39, [A wire of length 0.25 m carrying 2.0 A is at right angles to a 0.40 T field. The force is], [0.20 N], [0.50 N], [2.0 N], [0.050 N])
#v(7.19pt)

#mcq(40, [The output of a half-wave rectifier is], [a steady d.c.], [pulses at twice the supply frequency], [pulses at the supply frequency], [an a.c. of the same amplitude])
#v(7.19pt)

#pagebreak()

== Mock Examination 1 — Answer Key

#answer-key-grid((
  "D", "C", "B", "A", "D", "B", "C", "A", "D", "B",
  "C", "A", "D", "A", "B", "C", "B", "A", "C", "D",
  "A", "B", "C", "D", "C", "D", "A", "B", "C", "A",
  "D", "B", "A", "C", "D", "B", "D", "B", "A", "C",
))

#v(8pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[READ YOUR SCORE]
  #v(3pt)
  #table(
    columns: (0.9fr, 2.6fr),
    inset: 4pt,
    align: (left + horizon, left + horizon),
    stroke: none,
    [*34–40*], [Secure. Sit the next paper under the same conditions within a week.],
    [*28–33*], [Developing. Group your misses by chapter in the Question Map and revise the heaviest one.],
    [*0–27*], [Revise before re-testing. Reread the chapter and redo its drill first.],
  )
]

== Mock Examination 1 — Question Map

Which chapter each question came from, grouped so that a column of misses in your script becomes a revision list. Tick every question you got wrong; the chapter with the longest tick list is the one to revise tonight, before you re-sit the paper.

#table(
  columns: (0.42fr, 1.75fr, 2.55fr, 0.5fr),
  inset: 5pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Topic],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Questions],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.]),
  [1], [Electrostatics and Capacitors], [1, 7, 13, 19, 25, 31, 37], [7],
  [2], [Current Electricity], [2, 8, 14, 20, 26, 32, 38], [7],
  [3], [Magnetism and Electromagnetic Induction], [3, 9, 15, 21, 27, 33, 39], [7],
  [4], [Electronics], [4, 10, 16, 22, 28, 34, 40], [7],
  [5], [Atomic Physics], [5, 11, 17, 23, 29, 35], [6],
  [6], [Radioactivity and Nuclear Physics], [6, 12, 18, 24, 30, 36], [6],
)

The paper is level with the syllabus: Chapter 1 (7) and Chapter 2 (7) carry the most questions, so a miss there costs the most marks. Revise those first.

#block[
  #set text(size: 9.6pt)
  #set par(leading: 0.68em, spacing: 0.72em)
  #block(breakable: false)[
  == Mock Examination 1 — Complete Solutions
  #sol-item(1, "D", dense: true, pad: 11.25pt)[
    *Chapter 1.* $C = Q\/V$, so one farad is one coulomb per volt — a very large unit, which is why most capacitors are quoted in µF or pF.
  ]

  #sol-item(2, "C", dense: true, pad: 11.25pt)[
    *Chapter 2.* A kilowatt-hour is a kilowatt multiplied by an hour: a practical unit of energy, equal to 3.6 MJ.
  ]
  ]

  #sol-item(3, "B", dense: true, pad: 11.25pt)[
    *Chapter 3.* A generator is a motor run backwards: work turns the coil, and the changing flux across it drives a current.
  ]

  #sol-item(4, "A", dense: true, pad: 11.25pt)[
    *Chapter 4.* Light creates extra electron–hole pairs in the junction, so the reverse leakage current rises with the illumination.
  ]

  #sol-item(5, "D", dense: true, pad: 11.25pt)[
    *Chapter 5.* The cooler outer layers absorb exactly the frequencies the elements there can absorb, leaving dark lines at those wavelengths.
  ]

  #sol-item(6, "B", dense: true, pad: 11.25pt)[
    *Chapter 6.* Same proton number, different neutron number — which changes the mass but not the chemistry.
  ]

  #sol-item(7, "C", dense: true, pad: 11.25pt)[
    *Chapter 1.* $W = q V = 4.0 times 20 = 80$ J. One volt is one joule per coulomb, so the multiplication is all that is needed.
  ]

  #sol-item(8, "A", dense: true, pad: 11.25pt)[
    *Chapter 2.* $P = V^2\/R$ at fixed mains p.d., so the higher-power kettle has the smaller element resistance and the larger current.
  ]

  #sol-item(9, "D", dense: true, pad: 11.25pt)[
    *Chapter 3.* Slip rings take the current out unchanged, and the induced e.m.f. changes sign every half revolution.
  ]

  #sol-item(10, "B", dense: true, pad: 11.25pt)[
    *Chapter 4.* $2^4 = 16$. The number of combinations doubles with each extra input.
  ]

  #sol-item(11, "C", dense: true, pad: 11.25pt)[
    *Chapter 5.* The energy difference leaves as a photon of energy $h f = E_2 - E_1$.
  ]

  #sol-item(12, "A", dense: true, pad: 11.25pt)[
    *Chapter 6.* The missing mass has been converted into binding energy when the nucleus formed, according to $E = m c^2$.
  ]

  #sol-item(13, "D", dense: true, pad: 11.25pt)[
    *Chapter 1.* Micro means $10^(-6)$, so 250 µC is $250 times 10^(-6) = 2.5 times 10^(-4)$ C.
  ]

  #sol-item(14, "A", dense: true, pad: 11.25pt)[
    *Chapter 2.* For an ohmic conductor the resistance is a constant: the current doubles, but $V\/I$ stays the same.
  ]

  #sol-item(15, "B", dense: true, pad: 11.25pt)[
    *Chapter 3.* $V_s = 240 times 50\/1000 = 12$ V.
  ]

  #sol-item(16, "C", dense: true, pad: 11.25pt)[
    *Chapter 4.* AND requires both inputs to be high; the other three combinations give 0.
  ]

  #sol-item(17, "B", dense: true, pad: 11.25pt)[
    *Chapter 5.* $E = h c\/lambda = 6.6 times 10^(-34) times 3.0 times 10^8 \/ 6.0 times 10^(-7) = 3.3 times 10^(-19)$ J.
  ]

  #sol-item(18, "A", dense: true, pad: 11.25pt)[
    *Chapter 6.* Beta emission swaps a neutron for a proton and gamma emission changes nothing, so neither alters the mass number. Only alpha emission does.
  ]

  #sol-item(19, "C", dense: true, pad: 11.25pt)[
    *Chapter 1.* Parallel capacitances add: $3 times 6.0 = 18$ µF.
  ]

  #sol-item(20, "D", dense: true, pad: 11.25pt)[
    *Chapter 2.* In parallel every appliance sees 240 V and switching one off does not break the circuit for the others.
  ]

  #sol-item(21, "A", dense: true, pad: 11.25pt)[
    *Chapter 3.* A stronger magnet gives a bigger change of flux in the same time, so $N Delta Phi \/ Delta t$ is larger.
  ]

  #sol-item(22, "B", dense: true, pad: 11.25pt)[
    *Chapter 4.* The p–n junction conducts when forward biased and blocks when reverse biased, which is rectification.
  ]

  #sol-item(23, "C", dense: true, pad: 11.25pt)[
    *Chapter 5.* Light falling on the cell produces a current; interrupting the beam changes the current and trips the circuit.
  ]

  #sol-item(24, "D", dense: true, pad: 11.25pt)[
    *Chapter 6.* An alpha particle loses its energy in a few centimetres of air, so paper stops it — but it is the most dangerous if inhaled.
  ]

  #sol-item(25, "C", dense: true, pad: 11.25pt)[
    *Chapter 1.* The neutral point lies between them, nearer the smaller charge, where the two fields cancel: at 0.10 m from the 2 µC and 0.20 m from the 8 µC.
  ]

  #sol-item(26, "D", dense: true, pad: 11.25pt)[
    *Chapter 2.* Both add in series: $3 times 1.5 = 4.5$ V and $3 times 0.30 = 0.90$ $Omega$.
  ]

  #sol-item(27, "A", dense: true, pad: 11.25pt)[
    *Chapter 3.* The motor effect is the force on a current in a field, which is what turns the coil of a motor.
  ]

  #sol-item(28, "B", dense: true, pad: 11.25pt)[
    *Chapter 4.* Any gas in the tube would scatter the electron beam and produce stray ionisation before it reached the target.
  ]

  #sol-item(29, "C", dense: true, pad: 11.25pt)[
    *Chapter 5.* $lambda = h\/p$: the faster and heavier the particle, the shorter its wavelength and the harder it is to observe diffraction.
  ]

  #sol-item(30, "A", dense: true, pad: 11.25pt)[
    *Chapter 6.* About 200 MeV per fission, which is roughly a hundred million times the energy of a typical chemical reaction.
  ]

  #sol-item(31, "D", dense: true, pad: 11.25pt)[
    *Chapter 1.* $F = 9.0 times 10^9 times 8.0 times 10^(-6) times 2.0 times 10^(-6) \/ 0.04 = 3.6$ N.
  ]

  #sol-item(32, "B", dense: true, pad: 11.25pt)[
    *Chapter 2.* A near-zero resistance across the component carries almost all the current, which is why an ammeter must always be in series.
  ]

  #sol-item(33, "A", dense: true, pad: 11.25pt)[
    *Chapter 3.* $F = B I l sin 30° = 0.50 times 3.0 times 0.20 times 0.5 = 0.15$ N.
  ]

  #sol-item(34, "C", dense: true, pad: 11.25pt)[
    *Chapter 4.* Coils or plates act as a lens, concentrating the beam onto a small spot on the screen.
  ]

  #sol-item(35, "D", dense: true, pad: 11.25pt)[
    *Chapter 5.* The electron must go from −13.6 eV to 0 eV, so 13.6 eV is required — the energy of the ground state measured from the ionised state.
  ]

  #sol-item(36, "B", dense: true, pad: 11.25pt)[
    *Chapter 6.* Alpha decay takes 4 off the mass number and 2 off the atomic number.
  ]

  #sol-item(37, "D", dense: true, pad: 11.25pt)[
    *Chapter 1.* The rod's electrons neutralise some of the positive charge, so the leaf falls. A rod of the same charge would make it rise.
  ]

  #sol-item(38, "B", dense: true, pad: 11.25pt)[
    *Chapter 2.* $I = E\/(R + r) = 6.0\/3.0 = 2.0$ A.
  ]

  #sol-item(39, "A", dense: true, pad: 11.25pt)[
    *Chapter 3.* $F = B I l = 0.40 times 2.0 times 0.25 = 0.20$ N.
  ]

  #sol-item(40, "C", dense: true, pad: 11.25pt)[
    *Chapter 4.* One diode passes every other half-cycle, so the pulses arrive at the same rate as the supply cycles.
  ]

]

