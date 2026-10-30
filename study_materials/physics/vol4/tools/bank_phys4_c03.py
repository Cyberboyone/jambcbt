"""Chapter 3 drill bank — magnetism and electromagnetic induction."""

DRILL_3 = [
    ("Magnetic field lines outside a bar magnet run",
     ["from the south pole to the north pole", "from the north pole to the south pole", "in circles round the magnet", "from both poles outwards to infinity"], 1,
     "By convention the lines leave a north pole and enter a south pole, and inside the magnet they run back from south to north so that each line is a closed loop."),

    ("Like magnetic poles",
     ["attract", "repel", "have no effect on each other", "attract only if they are equal in strength"], 1,
     "Like poles repel and unlike poles attract — the same rule as for electric charges, but with magnets you can never separate the two poles."),

    ("A magnet is cut in half. The result is",
     ["a north pole and a south pole separately", "two smaller magnets, each with both poles", "two unmagnetised pieces", "one magnet and one non-magnet"], 1,
     "Magnetic poles always come in pairs. Cutting a magnet produces two complete magnets, and the same is true however many times you cut."),

    ("The direction of a magnetic field at a point is the direction of",
     ["the force on a north pole there", "the force on a south pole there", "the force on a moving electron there", "the current that produces it"], 0,
     "The field is defined by the force on a small north-seeking pole, which is why the lines leave the north pole of a magnet."),

    ("A straight wire carries a current. Its magnetic field lines are",
     ["concentric circles around the wire", "straight lines parallel to the wire", "radial lines from the wire", "closed loops along the wire"], 0,
     "The field of a long straight wire is a set of circles centred on the wire, with the direction given by the right-hand grip rule."),

    ("A solenoid carrying a current behaves like",
     ["a bar magnet, with a north and a south pole at its ends", "a single straight wire", "an electric dipole", "a capacitor"], 0,
     "Outside a solenoid the field is the same as that of a bar magnet; inside it is strong and uniform along the axis. That is how an electromagnet is built."),

    ("To reverse the direction of the magnetic field inside a solenoid you could",
     ["increase the current", "reverse the current", "insert an iron core", "reduce the number of turns"], 1,
     "The field direction follows the current direction — reverse the current, reverse the field. An iron core strengthens the field but does not reverse it."),

    ("A wire of length 0.50 m carries 4.0 A at right angles to a field of flux density 0.10 T. The force is",
     ["0.02 N", "0.20 N", "2.0 N", "20 N"], 1,
     "$F = B I l = 0.10 times 4.0 times 0.50 = 0.20$ N, since the wire is at right angles to the field."),

    ("The force on a current-carrying wire in a magnetic field is greatest when the wire",
     ["lies along the field", "makes 45° with the field", "is at right angles to the field", "is outside the field"], 2,
     "$F = B I l sin theta$ is largest when $theta = 90°$, so that $sin theta = 1$. A wire lying along the field feels no force at all."),

    ("The unit of magnetic flux density, the tesla, is equivalent to",
     ["N A⁻¹ m⁻¹", "N A m", "N m² A⁻¹", "A N⁻¹ m⁻¹"], 0,
     "From $F = B I l$, $B = F\/(I l)$, so one tesla is one newton per ampere per metre."),

    ("The direction of the force on a current-carrying conductor in a magnetic field is given by",
     ["Fleming's left-hand rule", "Fleming's right-hand rule", "the right-hand grip rule", "Lenz's law"], 0,
     "First finger along the field, second finger along the current, thumb along the force — the left hand. It describes the *motor* effect."),

    ("A current-carrying wire is placed in a magnetic field and feels no force. The wire must be",
     ["parallel to the field", "perpendicular to the field", "carrying an alternating current", "too short"], 0,
     "When the wire lies along the field, $theta = 0$ and $sin theta = 0$, so the force vanishes however strong the field."),

    ("A motor is fitted with a commutator so that",
     ["the current is always in the same direction in the coil after each half turn", "the speed is constant", "the field is uniform", "the coil can be removed easily"], 0,
     "Without a commutator the coil would stop at the vertical, where the force is along its axis. Reversing the current every half turn keeps the torque in the same direction."),

    ("To increase the turning effect of a simple electric motor you could",
     ["reduce the number of turns", "use a weaker magnet", "increase the current", "make the coil from thinner wire without other changes"], 2,
     "The force on each side is $B I l$, so more current, a stronger field or more turns all increase the torque."),

    ("An e.m.f. is induced in a coil when",
     ["a steady magnetic field passes through it", "the magnetic flux through it changes", "the coil is placed in a strong field", "the coil is made of copper"], 1,
     "Faraday's law: the e.m.f. is proportional to the *rate of change* of flux. A magnet held still beside a coil produces nothing at all."),

    ("A coil of 200 turns encloses 0.020 m². The flux density through it rises from zero to 0.40 T in 0.10 s. The average e.m.f. is",
     ["1.6 V", "16 V", "160 V", "0.80 V"], 1,
     "$E = N Delta Phi \/ Delta t = 200 times (0.40 times 0.020)\/0.10 = 16$ V."),

    ("The direction of an induced current is given by",
     ["Faraday's law", "Lenz's law", "Ohm's law", "Fleming's left-hand rule"], 1,
     "Lenz's law says the induced current opposes the change producing it, which is also a statement of conservation of energy."),

    ("A magnet is pushed into a coil and then held still inside it. While it is held still, the induced current is",
     ["large", "small but steady", "zero", "reversing rapidly"], 2,
     "Once the flux stops changing there is no induced e.m.f. and no current, however strong the field through the coil."),

    ("An induced current always flows in the direction that",
     ["helps the motion that produced it", "opposes the change that produced it", "is clockwise", "is from south to north"], 1,
     "That is Lenz's law. If the current helped the motion you would get energy for nothing, so the law is conservation of energy in disguise."),

    ("A bicycle dynamo becomes harder to turn when the lamp is switched on because",
     ["friction increases", "the induced current opposes the motion that produces it", "the magnet gets heavier", "the coil heats up and expands"], 1,
     "The extra current means extra energy has to be supplied, and by Lenz's law that appears as an opposing force on the rotating part."),

    ("An a.c. generator differs from a d.c. generator in that it has",
     ["a commutator instead of slip rings", "slip rings instead of a commutator", "no magnet", "no coil"], 1,
     "Slip rings take the current out unchanged, so the output alternates. A commutator swaps the connections every half turn and the output is d.c."),

    ("A transformer works only on alternating current because",
     ["the coils have a large resistance", "a steady current gives no changing flux, so no e.m.f. is induced", "the core saturates on d.c.", "d.c. cannot flow in a coil"], 1,
     "Induction needs a *change* of flux. A steady d.c. produces a steady flux, so nothing is induced and the transformer simply warms up."),

    ("A transformer has 500 turns on the primary and 25 on the secondary, and 240 V on the primary. The secondary voltage is",
     ["12 V", "48 V", "4800 V", "0.083 V"], 0,
     "$V_s = V_p times N_s\/N_p = 240 times 25\/500 = 12$ V. Fewer turns on the secondary means a step-down transformer."),

    ("A step-up transformer",
     ["raises the voltage and raises the current", "raises the voltage and lowers the current", "lowers the voltage and raises the current", "changes the frequency"], 1,
     "The power is unchanged, so a larger voltage must come with a smaller current: $V_s I_s = V_p I_p$."),

    ("An ideal transformer delivers 1200 W. If its secondary voltage is 12 V, the secondary current is",
     ["10 A", "100 A", "120 A", "1440 A"], 1,
     "$I = P\/V = 1200\/12 = 100$ A. A welding transformer is exactly this: low volts, very high amps."),

    ("Electricity is transmitted at high voltage because",
     ["the cables can carry more power", "the current is lower, so the $I^2 R$ loss in the cables is lower", "high voltage is safer", "transformers only work at high voltage"], 1,
     "For a given power, $I = P\/V$, so raising the voltage lowers the current, and the loss $I^2 R$ falls as the square of the current."),

    ("A transformer with 2400 turns on the primary and 120 turns on the secondary is connected to a 240 V supply. The secondary voltage is",
     ["12 V", "24 V", "48 V", "1200 V"], 0,
     "Turns ratio 120/2400 = 1/20, so $V_s = 240\/20 = 12$ V."),

    ("The core of a transformer is laminated so that",
     ["it is stronger", "eddy currents, and the heating they cause, are reduced", "the voltage rises", "it can be bent"], 1,
     "Thin insulated sheets break up the eddy currents that the changing flux would otherwise induce in the core, so less energy is lost as heat."),

    ("Which of the following would *not* increase the e.m.f. induced in a coil?",
     ["moving the magnet faster", "using a stronger magnet", "increasing the number of turns", "holding the magnet still inside the coil"], 3,
     "Only a *change* of flux induces an e.m.f., so holding the magnet still gives zero however strong it is."),

    ("A charge moving parallel to a magnetic field experiences",
     ["the greatest force", "a force perpendicular to the field", "no magnetic force", "a force along the field"], 2,
     "The magnetic force on a moving charge depends on $sin theta$, where $theta$ is the angle between velocity and field, so it vanishes when the two are parallel."),

    ("The magnetic field of a current in a loop is strongest",
     ["at the centre of the loop", "far outside the loop", "at the surface of the wire", "along the wire itself"], 0,
     "The fields from each part of the loop all point the same way at the centre, so they reinforce; that is why a coil gives a usable field at its axis."),

    ("An electromagnet is preferred to a permanent magnet in a scrapyard crane because",
     ["it is lighter", "it can be switched off to release the load", "it never loses strength", "it works without current"], 1,
     "A permanent magnet would have to be prised off the scrap; an electromagnet drops the load the instant its current is switched off."),

    ("A straight wire carrying 5.0 A is in a 0.20 T field at 30° to the field direction and is 0.40 m long. The force is",
     ["0.20 N", "0.40 N", "0.69 N", "0.80 N"], 0,
     "$F = B I l sin 30° = 0.20 times 5.0 times 0.40 times 0.5 = 0.20$ N."),

    ("The magnetic force on a wire in a field is at right angles to",
     ["the current only", "the field only", "both the current and the field", "neither the current nor the field"], 2,
     "The three directions are mutually perpendicular, which is exactly what Fleming's left-hand rule describes with three spread fingers."),

    ("A coil rotates in a magnetic field. The e.m.f. induced is greatest when the plane of the coil is",
     ["parallel to the field", "perpendicular to the field", "at 45° to the field", "at rest"], 0,
     "When the plane of the coil is parallel to the field the coil cuts the lines fastest, so the rate of change of flux is greatest."),

    ("An induction coil in a car (the ignition coil) is a step-up transformer because",
     ["it must convert d.c. to a.c.", "the battery's 12 V must become thousands of volts to fire the plug", "it stores charge", "it rectifies the current"], 1,
     "The turns ratio multiplies the voltage; the interruption of the primary current provides the change of flux that makes it work."),

    ("A galvanometer is described as a linear instrument because",
     ["its scale is straight", "the deflection is proportional to the current", "it has no resistance", "it works on a.c. only"], 1,
     "The torque on the coil is proportional to the current, and the hairspring's restoring torque is proportional to the angle, so the angle is proportional to the current."),

    ("Earth's magnetic field is useful because",
     ["it powers generators", "a compass needle can indicate direction from it", "it prevents lightning", "it charges the atmosphere"], 1,
     "The needle lines up with the horizontal component of Earth's field, which is what makes a compass work — and it is also why a plotting compass is used to trace field lines in the laboratory."),

    ("A magnetic field is said to be uniform when",
     ["its lines are parallel and equally spaced", "it is very strong", "it is produced by a solenoid", "its lines are circles"], 0,
     "Parallel, equally spaced lines mean the field has the same strength and direction everywhere in the region, as between two flat magnet poles."),

    ("Two long parallel wires carry currents in the *same* direction. The force between them is",
     ["attractive", "repulsive", "zero", "along the wires"], 0,
     "Parallel currents in the same direction attract, and opposite directions repel. The field of one wire cuts the other at right angles, so each feels a force — the same argument as two parallel beams of electrons."),
]
