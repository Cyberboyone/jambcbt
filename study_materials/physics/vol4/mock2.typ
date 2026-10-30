#import "template.typ": *

#current-chapter.update("Mock Examination 2")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Mock Examination 2]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[MOCK EXAMINATION 2]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Second Full-Syllabus CBT Paper]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[A second forty-question paper built from different items: the same syllabus coverage with more of the graph, laboratory and calculation questions. Sit it a week after Mock 1.]
]

#v(5pt)

+ Forty questions, forty minutes, no negative marking.

+ Expect at least twelve questions that need a calculation before the choice can be made.

+ Mark only after the full forty minutes have elapsed.

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 8pt,
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[QUESTIONS] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TIME] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40 min]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[MARKING] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[No negatives]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TARGET] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[31 / 40]],
)

== Mock Examination 2 — Questions

#mcq(1, [The charge-to-mass ratio of the electron was first measured by], [Rutherford], [J.J. Thomson], [Millikan], [Planck])
#v(5.62pt)

#mcq(2, [Alpha particles are deflected towards the negative plate because they], [are heavy], [move quickly], [have no charge], [carry a positive charge])
#v(5.62pt)

#mcq(3, [A 10 µF and a 15 µF capacitor are joined in parallel. The combination is], [25 µF], [6.0 µF], [12.5 µF], [150 µF])
#v(5.62pt)

#mcq(4, [The resistance of a wire of length l and area A is R. A second wire of the same material has length 2l and area 2A. Its resistance is], [2R], [R/2], [R], [4R])
#v(5.62pt)

#mcq(5, [A transformer cannot step up both voltage and current because], [it is not perfect], [the core would saturate], [that would create energy], [the frequency would change])
#v(5.62pt)

#mcq(6, [In a cathode-ray tube the electrons are accelerated by], [a magnetic field], [gravity], [the glass envelope], [an electric field between the cathode and the anode])
#v(5.62pt)

#mcq(7, [Which photon has the greatest energy?], [ultraviolet], [infrared], [red], [violet])
#v(5.62pt)

#mcq(8, [In the electric field of a cloud chamber, gamma radiation], [bends towards the positive plate], [goes straight on], [bends towards the negative plate], [is stopped])
#v(5.62pt)

#mcq(9, [An electron and a proton are placed in the same uniform electric field. The force on the electron], [is smaller and in the same direction], [is larger and in the opposite direction], [is the same size and in the same direction], [is zero])
#v(5.62pt)

#mcq(10, [The drift velocity of electrons in a wire is of the order of], [10⁸ m s⁻¹], [10⁶ m s⁻¹], [10⁻⁴ m s⁻¹], [10 m s⁻¹])
#v(5.62pt)

#mcq(11, [A solenoid with a soft-iron core is called], [a permanent magnet], [a transformer], [a relay coil only], [an electromagnet])
#v(5.62pt)

#mcq(12, [A transistor switch driving a lamp needs a base resistor to], [limit the base current], [increase the gain], [protect the lamp], [change the supply frequency])
#v(5.62pt)

#mcq(13, [The number of photons emitted per second by a 1.0 mW source of 500 nm light is about], [2.5 × 10¹⁸ s⁻¹], [4.0 × 10⁻¹⁸ s⁻¹], [2.5 × 10¹⁵ s⁻¹], [1.0 × 10³ s⁻¹])
#v(5.62pt)

#mcq(14, [The rate of decay of a radioactive sample can be changed by], [heating it], [cooling it], [combining it chemically], [nothing — it is fixed by the nucleus])
#v(5.62pt)

#mcq(15, [A body carrying a charge of 1.12 × 10⁻¹⁸ C has], [lost 7 electrons], [gained 7 electrons], [gained 2 electrons], [lost 2 electrons])
#v(5.62pt)

#mcq(16, [In the circuit above, the p.d. across the 6.0 Ω resistor is], [3.0 V], [6.0 V], [4.5 V], [9.0 V])
#v(5.62pt)

#mcq(17, [An ideal transformer has 2400 turns on the primary, 200 on the secondary, and 240 V at the primary. The secondary voltage is], [2.0 V], [20 V], [24 V], [240 V])
#v(5.62pt)

#mcq(18, [The characteristic curve of a diode is drawn with], [p.d. on the vertical axis and current horizontal], [power against time], [current on the vertical axis and p.d. on the horizontal axis], [resistance against current])
#v(5.62pt)

#mcq(19, [The line spectrum of an element is best described as], [a set of sharp bright lines on a dark background], [a continuous band of colours], [a set of dark bands on a bright background only], [a single line])
#v(5.62pt)

#mcq(20, [The energy released in a nuclear reaction appears as], [mass], [electric charge], [magnetic field], [kinetic energy of the products and radiation])
#v(5.62pt)

#mcq(21, [Two capacitors of 3.0 µF and 6.0 µF are in series across 90 V. The charge on each is], [2.7 × 10⁻⁴ C], [1.8 × 10⁻⁴ C], [5.4 × 10⁻⁴ C], [9.0 × 10⁻⁵ C])
#v(5.62pt)

#mcq(22, [At ₦60 per kWh, running a 2.0 kW heater for 5.0 hours costs], [₦600], [₦120], [₦300], [₦1200])
#v(5.62pt)

#mcq(23, [The force on a wire in a magnetic field is zero when the wire], [is perpendicular to the field], [carries a large current], [is short], [lies along the field])
#v(5.62pt)

#mcq(24, [If a transistor's collector current is 20 mA and its emitter current 20.2 mA, the base current is], [0.2 µA], [2.0 mA], [0.2 mA], [40.2 mA])
#v(5.62pt)

#mcq(25, [The work function of a metal is 3.0 eV. Light of frequency 1.0 × 10¹⁵ Hz falls on it. The maximum kinetic energy of the photoelectrons is], [3.0 eV], [1.1 eV], [4.1 eV], [no emission])
#v(5.62pt)

#mcq(26, [The half-life of a nuclide is], [half the time it takes to decay completely], [the time for the mass to halve by evaporation], [the time for half of the nuclei present to decay], [the time for the activity to double])
#v(5.62pt)

#mcq(27, [The capacitance of a parallel-plate capacitor is *reduced* if], [the area of the plates is increased], [a dielectric is inserted], [the p.d. is reduced], [the separation is increased])
#v(5.62pt)

#mcq(28, [A p.d. of 9.0 V is applied across a 36 Ω resistor. The current is], [0.25 A], [4.0 A], [0.25 mA], [324 A])
#v(5.62pt)

#mcq(29, [A plotting compass placed near a bar magnet points along], [the local magnetic field line], [the magnet's axis only], [the geographic north], [the magnet's surface])
#v(5.62pt)

#mcq(30, [An LED emits light when], [reverse biased], [heated], [cooled], [forward biased and carriers recombine])
#v(5.62pt)

#mcq(31, [The kinetic energy of photoelectrons is measured by], [a thermometer], [the stopping potential], [an ammeter in the light beam], [the colour of the light])
#v(5.62pt)

#mcq(32, [Which of the following statements about gamma rays is *false*?], [they have no charge], [they travel at the speed of light], [they are deflected by a magnetic field], [they can damage living cells])
#v(5.62pt)

#mcq(33, [The electric field intensity 0.050 m from a charge of 2.0 µC is], [3.6 × 10⁵ N C⁻¹], [1.8 × 10⁵ N C⁻¹], [7.2 × 10⁶ N C⁻¹], [7.2 × 10⁴ N C⁻¹])
#v(5.62pt)

#mcq(34, [The unit of electrical energy may be written as], [W s⁻¹], [W s], [J s], [J s⁻¹])
#v(5.62pt)

#mcq(35, [The magnetic force on a wire is at right angles to], [both the current and the field], [the current], [the field], [neither])
#v(5.62pt)

#mcq(36, [A diode in reverse bias shows], [a very large current], [no resistance], [a negative resistance], [a very small leakage current])
#v(5.62pt)

#mcq(37, [X-rays are stopped more strongly by bone than by flesh because bone], [is denser and contains calcium, a heavier element], [is a conductor], [is colder], [is magnetic])
#v(5.62pt)

#mcq(38, [The radiation with the greatest penetrating power is], [alpha], [beta], [gamma], [they are equal])
#v(5.62pt)

#mcq(39, [The separation between two point charges is tripled. The force between them becomes], [three times as large], [one ninth as large], [one third as large], [nine times as large])
#v(5.62pt)

#mcq(40, [A 12 Ω and a 4.0 Ω resistor are in parallel across 12 V. The current in the 4.0 Ω branch is], [1.0 A], [2.0 A], [4.0 A], [3.0 A])
#v(5.62pt)

#pagebreak()

== Mock Examination 2 — Answer Key

#answer-key-grid((
  "B", "D", "A", "C", "C", "D", "A", "B", "B", "C",
  "D", "A", "C", "D", "A", "B", "B", "C", "A", "D",
  "B", "A", "D", "C", "B", "C", "D", "A", "A", "D",
  "B", "C", "C", "B", "A", "D", "A", "C", "B", "D",
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

== Mock Examination 2 — Question Map

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
  [1], [Electrostatics and Capacitors], [3, 9, 15, 21, 27, 33, 39], [7],
  [2], [Current Electricity], [4, 10, 16, 22, 28, 34, 40], [7],
  [3], [Magnetism and Electromagnetic Induction], [5, 11, 17, 23, 29, 35], [6],
  [4], [Electronics], [6, 12, 18, 24, 30, 36], [6],
  [5], [Atomic Physics], [1, 7, 13, 19, 25, 31, 37], [7],
  [6], [Radioactivity and Nuclear Physics], [2, 8, 14, 20, 26, 32, 38], [7],
)

The paper is level with the syllabus: Chapter 1 (7) and Chapter 2 (7) carry the most questions, so a miss there costs the most marks. Revise those first.

#block[
  #set text(size: 9.6pt)
  #set par(leading: 0.68em, spacing: 0.72em)
  #block(breakable: false)[
  == Mock Examination 2 — Complete Solutions
  #sol-item(1, "B", dense: true, pad: 10.9pt)[
    *Chapter 5.* Thomson's cathode-ray experiments gave $e\/m$; Millikan's oil-drop experiment later gave $e$ on its own, and hence $m$.
  ]

  #sol-item(2, "D", dense: true, pad: 10.9pt)[
    *Chapter 6.* A positive charge is attracted to the negative plate, and the deflection of an alpha particle is small because it is heavy.
  ]
  ]

  #sol-item(3, "A", dense: true, pad: 10.9pt)[
    *Chapter 1.* In parallel the capacitances add: $10 + 15 = 25$ µF, because both are across the same p.d.
  ]

  #sol-item(4, "C", dense: true, pad: 10.9pt)[
    *Chapter 2.* $R = rho l\/A$: doubling both the length and the area leaves the ratio unchanged, so the resistance is unchanged.
  ]

  #sol-item(5, "C", dense: true, pad: 10.9pt)[
    *Chapter 3.* For a near-ideal transformer the power out cannot exceed the power in, so a larger voltage must come with a smaller current.
  ]

  #sol-item(6, "D", dense: true, pad: 10.9pt)[
    *Chapter 4.* The anode is at a high positive potential, so the electrons are pulled towards it and leave with kinetic energy $e V$.
  ]

  #sol-item(7, "A", dense: true, pad: 10.9pt)[
    *Chapter 5.* Energy rises with frequency, and of these four ultraviolet has the highest frequency and therefore the shortest wavelength.
  ]

  #sol-item(8, "B", dense: true, pad: 10.9pt)[
    *Chapter 6.* Gamma rays carry no charge, so an electric field has no effect on their path.
  ]

  #sol-item(9, "B", dense: true, pad: 10.9pt)[
    *Chapter 1.* The charges are equal and opposite, so the forces are equal in size — but the electron is pushed against the field and the proton along it.
  ]

  #sol-item(10, "C", dense: true, pad: 10.9pt)[
    *Chapter 2.* Electrons drift at about a millimetre per second; the *signal* travels at nearly the speed of light because the field is established almost instantly along the wire.
  ]

  #sol-item(11, "D", dense: true, pad: 10.9pt)[
    *Chapter 3.* The iron multiplies the field and loses its magnetism when the current stops, which is exactly what an electromagnet should do.
  ]

  #sol-item(12, "A", dense: true, pad: 10.9pt)[
    *Chapter 4.* Without it the base–emitter junction would draw far too much current and the transistor would be destroyed.
  ]

  #sol-item(13, "C", dense: true, pad: 10.9pt)[
    *Chapter 5.* Each photon carries $3.96 times 10^(-19)$ J, so $10^(-3) \/ 3.96 times 10^(-19) = 2.5 times 10^15$ photons per second.
  ]

  #sol-item(14, "D", dense: true, pad: 10.9pt)[
    *Chapter 6.* Half-life is a property of the nucleus. Temperature, pressure and chemical state change nothing measurable.
  ]

  #sol-item(15, "A", dense: true, pad: 10.9pt)[
    *Chapter 1.* $n = 1.12 times 10^(-18) \/ 1.6 times 10^(-19) = 7$. The body is positive, so it has *lost* seven electrons.
  ]

  #sol-item(16, "B", dense: true, pad: 10.9pt)[
    *Chapter 2.* $V = I R = 1.0 times 6.0 = 6.0$ V. The larger resistor takes the larger share of the p.d.
  ]

  #sol-item(17, "B", dense: true, pad: 10.9pt)[
    *Chapter 3.* $V_s = 240 times 200\/2400 = 20$ V.
  ]

  #sol-item(18, "C", dense: true, pad: 10.9pt)[
    *Chapter 4.* The forward part of the curve stays near zero until about 0.7 V and then rises steeply; the reverse part stays near zero.
  ]

  #sol-item(19, "A", dense: true, pad: 10.9pt)[
    *Chapter 5.* Emission lines are bright on dark; absorption lines are dark on a continuous background. The positions are identical, and they identify the element.
  ]

  #sol-item(20, "D", dense: true, pad: 10.9pt)[
    *Chapter 6.* The mass defect reappears as the kinetic energy of the fragments and as gamma radiation.
  ]

  #sol-item(21, "B", dense: true, pad: 10.9pt)[
    *Chapter 1.* Series capacitance is 2.0 µF, and the same charge is on both: $Q = 2.0 times 10^(-6) times 90 = 1.8 times 10^(-4)$ C.
  ]

  #sol-item(22, "A", dense: true, pad: 10.9pt)[
    *Chapter 2.* Energy $= 2.0 times 5.0 = 10$ kWh, so the cost is $10 times 60 = $ ₦600.
  ]

  #sol-item(23, "D", dense: true, pad: 10.9pt)[
    *Chapter 3.* $F = B I l sin theta$, and $sin 0 = 0$ — a wire parallel to the field feels nothing.
  ]

  #sol-item(24, "C", dense: true, pad: 10.9pt)[
    *Chapter 4.* $I_b = I_e - I_c = 0.2$ mA, about one hundredth of the collector current — consistent with a gain of about 100.
  ]

  #sol-item(25, "B", dense: true, pad: 10.9pt)[
    *Chapter 5.* $h f = 6.6 times 10^(-19)$ J $= 4.1$ eV, so $1\/2 m v^2 = 4.1 - 3.0 = 1.1$ eV.
  ]

  #sol-item(26, "C", dense: true, pad: 10.9pt)[
    *Chapter 6.* It is a fixed fraction per unit time, which is why the decay curve never quite reaches zero.
  ]

  #sol-item(27, "D", dense: true, pad: 10.9pt)[
    *Chapter 1.* $C = epsilon_0 epsilon_r A \/ d$: increasing $d$ reduces $C$. The p.d. plays no part in the capacitance itself.
  ]

  #sol-item(28, "A", dense: true, pad: 10.9pt)[
    *Chapter 2.* $I = V\/R = 9.0\/36 = 0.25$ A.
  ]

  #sol-item(29, "A", dense: true, pad: 10.9pt)[
    *Chapter 3.* The needle aligns with the field at that point, which is how field lines are mapped in the laboratory.
  ]

  #sol-item(30, "D", dense: true, pad: 10.9pt)[
    *Chapter 4.* Electrons falling into holes release energy as photons; the colour is set by the size of the junction's energy gap.
  ]

  #sol-item(31, "B", dense: true, pad: 10.9pt)[
    *Chapter 5.* A reverse p.d. just able to stop the fastest electrons satisfies $e V_s = 1\/2 m v^2_max$.
  ]

  #sol-item(32, "C", dense: true, pad: 10.9pt)[
    *Chapter 6.* Being uncharged, gamma rays are not deflected by electric or magnetic fields — which is one way to distinguish them from alpha and beta.
  ]

  #sol-item(33, "C", dense: true, pad: 10.9pt)[
    *Chapter 1.* $E = k Q \/ r^2 = 9.0 times 10^9 times 2.0 times 10^(-6) \/ (0.050)^2 = 7.2 times 10^6$ N C⁻¹.
  ]

  #sol-item(34, "B", dense: true, pad: 10.9pt)[
    *Chapter 2.* A watt-second is a joule, and a kilowatt-hour is 3.6 million of them. A joule is a watt multiplied by a second.
  ]

  #sol-item(35, "A", dense: true, pad: 10.9pt)[
    *Chapter 3.* Fleming's left-hand rule has the three directions mutually perpendicular, which is why the force can do no work on a charge moving along the wire.
  ]

  #sol-item(36, "D", dense: true, pad: 10.9pt)[
    *Chapter 4.* Only a leakage current of microamps flows until the reverse voltage reaches breakdown, which is why a diode can be used as a one-way valve.
  ]

  #sol-item(37, "A", dense: true, pad: 10.9pt)[
    *Chapter 5.* Absorption rises steeply with density and with atomic number, so calcium absorbs far more than the light elements of soft tissue.
  ]

  #sol-item(38, "C", dense: true, pad: 10.9pt)[
    *Chapter 6.* Gamma rays are uncharged and pass through the gaps in matter, so only several centimetres of lead reduce them appreciably.
  ]

  #sol-item(39, "B", dense: true, pad: 10.9pt)[
    *Chapter 1.* The force goes as $1\/r^2$, and $3^2 = 9$, so the force falls to one ninth.
  ]

  #sol-item(40, "D", dense: true, pad: 10.9pt)[
    *Chapter 2.* Each branch has the full 12 V, so $I = 12\/4.0 = 3.0$ A.
  ]

]

