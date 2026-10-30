#import "template.typ": *

#current-chapter.update("Chapter 3: Magnetism and Induction")

#pagebreak()

#chapter-opener(
  3,
  "Magnetism and Electromagnetic Induction",
  subtitle: "Magnetic Fields and Poles, the Field of a Current, Force on a Conductor, the Motor, Faraday's and Lenz's Laws, the Generator and the Transformer",
  syllabus-ref: "Sec. C • Electricity 3",
  utme-weight: "3 Qs every year",
  running: "Magnetism and Induction",
)

#focus-radar(
  objectives: (
    "Describe the magnetic field of a bar magnet and of a current-carrying conductor.",
    "Use $F = B I l$ to find the force on a conductor in a field, and apply Fleming's left-hand rule.",
    "Explain the action of the electric motor and the moving-coil galvanometer.",
    "State Faraday's and Lenz's laws, and explain electromagnetic induction.",
    "Describe the a.c. generator and the difference between a.c. and d.c.",
    "Use the transformer equations $V_s\/V_p = N_s\/N_p$ and $V_s I_s = V_p I_p$.",
  ),
  hotspots: (
    "“The force on a wire carrying 5 A in a 0.20 T field, 0.30 m long, is …” — 0.30 N, and the wire must be at right angles.",
    "“A transformer has 200 turns on the primary and 1000 on the secondary. It is …” — step-up, and the voltage is five times larger.",
    "“An e.m.f. is induced in a coil when …” — the magnetic flux through it changes, not when the flux is merely large.",
    "“The direction of the induced current is given by …” — Lenz's law, and it always opposes the change that produced it.",
    "“A transformer does not work on d.c. because …” — there is no changing flux through the secondary.",
  ),
  trap-summary: "Three slips. (1) Thinking a steady field induces an e.m.f.: it is the *change* of flux that matters, so a magnet held still beside a coil gives nothing at all. (2) Using the transformer equation with currents and voltages swapped: the voltage follows the turns ratio, and the current goes the *other* way. (3) Forgetting the sine: $F = B I l$ is only true when the conductor is at right angles to the field, and $F = B I l sin theta$ otherwise.",
)

// ============================================================================
== 3.1 Magnets and Magnetic Fields

A magnet attracts iron, and two magnets will push or pull each other without touching. As with electric charge, the explanation is a field: the region round a magnet in which another magnet or a current feels a force.

#concept-box("Magnetic poles and field lines")[
  Every magnet has two poles, *north* and *south*, and like poles repel while unlike poles attract. A magnetic pole never exists on its own — cut a bar magnet in half and you have two smaller magnets, each with both poles.

  + *Field lines* leave a north pole and enter a south pole, and they never cross.
  + The lines are *closed loops*: inside the magnet they run from south to north, which is why the field of a bar magnet looks like a set of loops round the bar.
  + A *neutral point* is a place where the field of the magnet is exactly cancelled by another field, and a plotting compass there points in no direction at all.
]

#diagram-fig("diagrams/ch03_field.svg",
  "Three fields to be able to draw. A bar magnet's lines leave N and enter S as closed loops; a straight wire's field is a set of concentric circles whose direction is given by the right-hand grip rule; and a solenoid behaves like a bar magnet with N and S at its ends.", width: 100%)

*The magnetic effect of a current.* Oersted discovered in 1820 that a compass needle twitches when a current flows nearby. The field of a long straight wire is a set of circles centred on the wire: grip the wire with the right hand with the thumb along the conventional current, and the fingers curl in the direction of the field. Inside a solenoid the field is uniform and along the axis, and outside it the coil behaves exactly like a bar magnet — which is why an electromagnet can be switched on and off while a permanent magnet cannot.

// ============================================================================
== 3.2 Force on a Current-Carrying Conductor

A current in a magnetic field feels a force. That single fact drives the electric motor, the loudspeaker, the moving-coil meter and the cathode-ray tube, and it is worth more marks in this section than anything else in the chapter.

#formula-box("The motor effect")[
  + *The force:* $F = B I l sin theta$, where $theta$ is the angle between the field and the current.

  $B$ is the flux density in tesla (T), $I$ the current in amperes, $l$ the length of the conductor *in the field* in metres, and $F$ the force in newtons. One tesla is one newton per ampere per metre.

  + *Worst and best cases:* the force is zero when the wire is *parallel* to the field ($theta = 0$) and greatest when it is perpendicular ($theta = 90°$, so $sin theta = 1$ and $F = B I l$).
]

#diagram-fig("diagrams/ch03_force.svg",
  "The motor effect. A conductor carrying current into the page sits between a north and a south pole; the force on it is at right angles to both the field and the current. Cross the two known directions with the left hand and the thumb gives the third.", width: 100%)

*Fleming's left-hand rule.* Hold the left hand with the thumb and first two fingers at right angles to each other. Point the *first finger* along the field, from north to south; point the *second finger* along the current; the *thumb* then gives the direction of the force — the direction in which the wire is pushed. Reverse either the current or the field and the force reverses; reverse both and it stays the same.

#worked-example(
  1,
  "The force on a wire in a field",
  [A straight wire 0.30 m long carries a current of 5.0 A at right angles to a uniform magnetic field of flux density 0.20 T. (a) Find the force on the wire. (b) Find the force if the wire is turned so that it makes an angle of 30° with the field.],
  [
    *(a)* $F = B I l = 0.20 times 5.0 times 0.30 = 0.30$ N.

    *(b)* $F = B I l sin 30° = 0.30 times 0.5 = 0.15$ N.

    *Check.* The largest force is at right angles, so every other angle must give less — 0.15 N is exactly half, which is what $sin 30° = 0.5$ predicts. A wire lying *along* the field would feel no force at all, which is why the armature of a motor is wound so that its coils cut the field rather than lie along it.
  ],
  tier: "FOUNDATION",
)

*The electric motor.* A rectangular coil between the poles of a magnet has current in opposite directions on its two sides, so one side is pushed up and the other down: the coil turns. A *commutator* reverses the current every half turn, so the coil keeps turning the same way instead of stopping when it reaches the vertical. Three things increase the turning effect: more current, a stronger field, and more turns of wire.

*The moving-coil galvanometer.* The same coil, held by a hairspring instead of a commutator. The force on the coil is proportional to the current, so the deflection of the pointer is proportional to the current — which is what makes an analogue meter a *linear* instrument. Turn the meter through 90° and it stops working, because the coil then lies along the field and feels no force; that is why meters are marked "use upright".

#trap-box("A field alone does nothing")[
  A wire carrying current in a magnetic field feels a force, but a wire carrying *no* current does not, however strong the field. Likewise a stationary charge in a magnetic field feels no force at all — the force is on moving charge. Both statements are one line, and both are offered as true-looking options every year.
]

// ============================================================================
== 3.3 Electromagnetic Induction

Push a bar magnet into a coil and the galvanometer needle jumps; hold the magnet still and it returns to zero; pull it out and it jumps the other way. Nothing is connected to the coil, yet a current flows — and that current is *induced* by the changing magnetic field.

#concept-box("Faraday's law")[
  The e.m.f. induced in a conductor is proportional to the *rate of change* of magnetic flux through it:

  $E = -N (Delta Phi)\/(Delta t)$

  $N$ is the number of turns, $Phi = B A$ is the flux through one turn, and the minus sign is Lenz's law. Faraday's law says an e.m.f. needs a *change*: a steady field, however strong, induces nothing.

  + *More e.m.f.* — more turns, a stronger magnet, a bigger area, or a faster change.
  + *Zero e.m.f.* — a magnet held still, or a coil moving parallel to a uniform field without cutting any lines.
]

#diagram-fig("diagrams/ch03_induction.svg",
  "Faraday's experiment and the two laws that describe it. An e.m.f. appears only while the flux is changing, and the direction of the induced current is always such as to oppose the change — push the magnet in and the coil behaves like a magnet with its like pole facing you.", width: 100%)

*Lenz's law.* The induced current always flows in the direction that *opposes* the change producing it. Push a north pole towards a coil and the near face of the coil becomes a north pole, repelling the magnet; pull it away and the near face becomes a south pole, holding it back. The consequence is that you always have to do work to generate electricity — which is why a bicycle dynamo feels harder to turn when its lamp is on.

#worked-example(
  2,
  "An e.m.f. from a changing flux",
  [A coil of 200 turns encloses an area of $0.020$ m². The flux density through the coil is increased from zero to 0.40 T in 0.10 s. Find the average e.m.f. induced.],
  [
    The flux through one turn changes by $Delta Phi = B A = 0.40 times 0.020 = 8.0 times 10^(-3)$ Wb.

    $E = N (Delta Phi)\/(Delta t) = 200 times (8.0 times 10^(-3))\/0.10 = 16$ V.

    *Check.* The units are consistent: tesla × metre² is the weber, so the flux change is in Wb and the answer in volts. And the size is plausible — a couple of hundred turns and a tenth of a second is exactly how a school demonstration is set up to produce a meter-reading e.m.f. rather than a spark.
  ],
  tier: "UTME STANDARD",
)

*The a.c. generator.* A coil rotating in a magnetic field cuts the lines at a changing rate: fastest when the coil's plane is parallel to the field, zero when its plane is perpendicular. The result is an alternating e.m.f. that reverses every half revolution. A *slip-ring* connection takes the current out without reversing it mechanically, so the output is alternating current. Replace the slip rings with a commutator and the output is rectified into direct current — which is the whole difference between an a.c. and a d.c. generator.

#trap-box("Current is induced, not created from nothing")[
  The induced current costs energy, and the energy comes from whoever is pushing the magnet or turning the coil. Lenz's law is conservation of energy in disguise: if the induced current helped the motion instead of opposing it, you would get electrical energy for nothing, and a machine that ran itself. That is why the examiner's "why does the coil resist being turned?" question is answered with Lenz's law and not with friction.
]

// ============================================================================
== 3.4 The Transformer

Two coils wound on the same iron core, with no electrical connection between them, will still pass energy from one to the other — as long as the current in the first is *changing*. That is the transformer, and it is the reason mains electricity arrives at 240 V instead of the 25 kV that leaves the power station.

#formula-box("The transformer equations")[
  + *Voltage ratio:* $(V_s)/(V_p) = (N_s)/(N_p)$ — the voltages are in the same ratio as the turns.
  + *Power:* for an ideal transformer, $V_s I_s = V_p I_p$, so the power in equals the power out.
  + *Current ratio:* combining the two, $(I_s)/(I_p) = (N_p)/(N_s)$ — the current goes the *opposite* way to the voltage.

  A *step-up* transformer has more turns on the secondary and raises the voltage; a *step-down* has fewer and lowers it. Neither changes the power, so a voltage multiplied by five comes with a current divided by five.
]

#diagram-fig("diagrams/ch03_transformer.svg",
  "A step-up transformer: four turns on the primary, eight on the secondary, and twice the voltage out. The current is halved, because the power is unchanged — which is exactly what the transmission of electricity relies on.", width: 100%)

*Why the grid uses high voltage.* The cables carrying electricity have resistance, and the power wasted in them is $I^2 R$. For a given power, raising the voltage lowers the current, and a tenth of the current wastes a hundredth of the power. Electricity therefore leaves the power station at a few tens of kilovolts, is stepped up for the long run, and is stepped down again in stages to the 240 V at the socket. Three or four transformers sit between a generator and a lamp.

#worked-example(
  3,
  "A transformer on the grid",
  [A transformer has 500 turns on its primary and 25 turns on its secondary. The primary is connected to a 240 V a.c. supply and delivers 1200 W to a load. Find (a) the secondary voltage, (b) the secondary current and (c) the primary current.],
  [
    *(a)* $(V_s)/(V_p) = (N_s)/(N_p)$, so $V_s = 240 times 25\/500 = 12$ V. It is a step-down transformer.

    *(b)* $I_s = P\/V_s = 1200\/12 = 100$ A.

    *(c)* $I_p = P\/V_p = 1200\/240 = 5.0$ A.

    *Check.* The turns ratio is 20:1 and the voltage ratio is 20:1, as it must be; the current ratio is 20:1 the other way, 5.0 A in and 100 A out. And $V_p I_p = 240 times 5.0 = 1200$ W, the same as the output, which is what "ideal" means. This is a welding transformer: low voltage, very high current.
  ],
  tier: "UTME STANDARD",
)

#shortcut-box("Three transformer facts worth carrying")[
  + *Turns set the volts, the load sets the amps.* With no load connected, a transformer draws almost nothing from the supply, however many turns it has.
  + *Only a.c. works.* A steady d.c. gives a steady flux, and a steady flux induces nothing in the secondary — the transformer simply heats up.
  + *Real transformers lose energy* to resistance in the coils (copper loss) and to repeated magnetisation of the core (eddy currents). Laminating the core and using thick wire reduce both.
]

#worked-example(
  4,
  "The efficiency of a real transformer",
  [A transformer steps 240 V down to 12 V. With a 12 V load drawing 4.0 A, the primary current is 0.22 A. Find (a) the power delivered to the load, (b) the power taken from the supply and (c) the efficiency.],
  [
    *(a)* $P_s = V_s I_s = 12 times 4.0 = 48$ W.

    *(b)* $P_p = V_p I_p = 240 times 0.22 = 52.8$ W.

    *(c)* Efficiency $= P_s \/ P_p = 48 \/ 52.8 = 0.91$, or 91 %.

    *Check.* The efficiency must be below 100 %, and 91 % is realistic for a small transformer. If the answer had come out above 100 %, the currents would have been read the wrong way round — the primary current is always the smaller one in a step-down transformer, because the power is roughly the same on both sides and the voltage is larger.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  5,
  "An e.m.f. from a changing field",
  [A coil of 50 turns, each of area 0.040 m², is held perpendicular to a magnetic field that rises steadily from zero to 0.25 T in 0.050 s. Find the average e.m.f. induced in the coil.],
  [
    The flux through one turn is $Phi = B A$, so the change is
    $Delta Phi = (0.25 - 0) times 0.040 = 1.0 times 10^(-2)$ Wb.

    Faraday's law: $E = N (Delta Phi)\/(Delta t) = 50 times (1.0 times 10^(-2)) \/ 0.050 = 10$ V.

    *Check.* The three levers are all visible in the formula: more turns, a bigger area or a faster change all raise the e.m.f. Halving the time would double it to 20 V. Note also that the coil is *perpendicular* to the field, which is the position of maximum flux — if it were parallel to the field, no lines would pass through it and the answer would be zero.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: magnetism and electromagnetic induction.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Magnetic field lines leave a north pole and enter a south pole, and they are closed loops — cut a magnet in half and you get two magnets, never an isolated pole. A current makes a field of its own: circles round a straight wire, a bar-magnet pattern for a solenoid. Put a current *in* a field and it feels a force, $F = B I l sin theta$, at right angles to both, which is the motor effect and the reason for Fleming's left-hand rule. Move a magnet near a coil and the changing flux induces an e.m.f., $E = -N d Phi \/ d t$, in a direction that opposes the change (Lenz) — the generator effect, and the same physics running backwards. A transformer is two coils sharing a changing flux, so $V_s \/ V_p = N_s \/ N_p$ and, ideally, $V_p I_p = V_s I_s$; it needs a.c. because only a *changing* flux induces anything. That is also why the grid transmits at high voltage: for a fixed power the current falls, and the loss in the cables, $I^2 R$, falls with the square of it.
  ]
]

// ============================================================================
== 3.5 Motors, Generators and the Grid in One Picture

The motor effect and electromagnetic induction are the same physics running in opposite directions, and almost every machine in this chapter is one of the two.

#concept-box("Two machines, one law")[
  + *Motor:* a current in a magnetic field feels a force. Electrical energy in, mechanical energy out. The commutator keeps the torque turning the same way.
  + *Generator:* a conductor moving in a magnetic field has a changing flux through it. Mechanical energy in, electrical energy out. Slip rings give a.c.; a commutator gives d.c.
  + *Transformer:* two coils sharing a changing flux. No moving parts at all — it changes the voltage of an alternating supply and nothing else.
  + *The grid:* generators produce at a few kilovolts, transformers step it up to hundreds of kilovolts for transmission, and step it back down for the streets. Each step is the same turns ratio.
]

#shortcut-box("Which rule, on which question?")[
  + Asked for a *force* on a wire or a beam of electrons? Fleming's *left* hand, and the answer has a direction.
  + Asked for an *induced current* or e.m.f.? Faraday for the size, Lenz for the direction — and the words "rate of change" should appear in your reasoning.
  + Asked for a *field* around a wire? The right-hand grip rule: thumb along the current, fingers round the field.
  + Asked what a transformer does to *current*? The opposite of what it does to voltage, because the power is unchanged.
]

// ============================================================================
== 3.6 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [A wire of length 0.50 m carrying a current of 4.0 A is at right angles to a magnetic field of flux density 0.10 T. The force on the wire is], [0.02 N], [2.0 N], [0.20 N], [20 N])
#mcq(2, [An e.m.f. is induced in a coil when], [a steady magnetic field passes through it], [the magnetic flux through it changes], [the coil is placed in a strong field], [the coil is made of copper])
#mcq(3, [A transformer with 1000 turns on the primary and 200 on the secondary is connected to a 240 V supply. The secondary voltage is], [24 V], [1200 V], [240 V], [48 V])
#mcq(4, [The direction of an induced current is given by], [Lenz's law], [Faraday's law], [Ohm's law], [Fleming's left-hand rule])

#answer-key-grid(("C", "B", "D", "A"))

#answer-notes((
  ("C", [$F = B I l = 0.10 times 4.0 times 0.50 = 0.20$ N, since the wire is at right angles to the field. Multiplying the current by itself instead of by the length gives 2.0 N, the tempting distractor.]),
  ("B", [it is the *change* of flux that induces an e.m.f.; a steady field through a stationary coil gives nothing.]),
  ("D", [a step-down: $V_s = 240 times 200\/1000 = 48$ V. Fewer turns on the secondary means a lower voltage.]),
  ("A", [Lenz's law gives the direction — the induced current opposes the change producing it. Faraday's law gives the size, and Fleming's left hand is for the force on a current, not for induction.]),
))

#chapter-checklist("Before you leave Chapter 3", (
  [Draw the field lines of a bar magnet and of a straight current-carrying wire.],
  [Use $F = B I l sin theta$ and Fleming's left-hand rule together.],
  [Explain why a motor needs a commutator.],
  [State Faraday's law in words and in symbols, and say what the minus sign means.],
  [Distinguish an a.c. generator from a d.c. generator by the connection.],
  [Use the turns ratio and the power equation, and say why the grid transmits at high voltage.],
))

#concept-box("Carry this into Chapter 4")[
  The last three chapters all rested on currents in wires. Chapter 4 goes inside the wire, into the semiconductor, where a current can be made to flow in *one direction only* — the diode — and where a small current at one terminal can control a large current at another, the transistor. Those two devices, plus the logic gate built from them, are what makes a computer.
]

#include "drill_ch03.typ"
