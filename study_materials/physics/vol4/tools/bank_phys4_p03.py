"""Paper bank for Chapter 3 — magnetism and electromagnetic induction."""

PAPER_3 = [
    ("A magnetic field line is a line along which",
     ["a moving charge travels", "a small north pole would point", "a current flows", "the field is zero"], 1,
     "Field lines show the direction a north-seeking pole would be pushed at each point, which is why they leave a north pole."),

    ("A magnet is suspended so that it can turn freely. It comes to rest with its north pole pointing",
     ["geographically north", "geographically south", "upwards", "vertically down"], 0,
     "The Earth behaves like a giant magnet whose magnetic south pole is near the geographic north, so the needle's north pole points north."),

    ("Which of the following is *not* a magnetic material?",
     ["iron", "cobalt", "nickel", "copper"], 3,
     "Copper is a good conductor but not ferromagnetic; iron, cobalt and nickel are the three familiar magnetic elements."),

    ("A solenoid with a soft-iron core is called",
     ["a permanent magnet", "an electromagnet", "a transformer", "a relay coil only"], 1,
     "The iron multiplies the field and loses its magnetism when the current stops, which is exactly what an electromagnet should do."),

    ("The magnetic field inside a long solenoid is",
     ["zero", "strong and uniform", "weak and diverging", "the same as that of a straight wire"], 1,
     "Inside the coil the contributions from every turn point the same way, giving a strong uniform field along the axis."),

    ("A wire of length 0.25 m carrying 2.0 A is at right angles to a 0.40 T field. The force is",
     ["0.20 N", "0.50 N", "2.0 N", "0.050 N"], 0,
     "$F = B I l = 0.40 times 2.0 times 0.25 = 0.20$ N."),

    ("The force on a wire in a magnetic field is zero when the wire",
     ["is perpendicular to the field", "carries a large current", "lies along the field", "is short"], 2,
     "$F = B I l sin theta$, and $sin 0 = 0$ — a wire parallel to the field feels nothing."),

    ("The torque on a current-carrying coil in a magnetic field is increased by",
     ["reducing the current", "winding more turns on the coil", "using a weaker magnet", "making the coil smaller"], 1,
     "More turns means more force on the same current: $F = B I l$ for each side, and the torque is the sum over all of them."),

    ("The device that reverses the current in a motor coil every half turn is the",
     ["slip ring", "commutator", "armature", "brush"], 1,
     "The commutator swaps the connections as the coil passes the vertical, so the torque keeps turning it the same way."),

    ("An e.m.f. is induced in a coil by",
     ["a steady flux through it", "a changing flux through it", "a large flux through it", "its resistance"], 1,
     "Faraday's law depends on the *rate of change* of flux. A steady flux, however large, induces nothing."),

    ("A coil of 100 turns has a flux through each turn change from 0.020 Wb to zero in 0.10 s. The average e.m.f. is",
     ["0.20 V", "2.0 V", "20 V", "200 V"], 2,
     "$E = N Delta Phi \/ Delta t = 100 times 0.020 \/ 0.10 = 20$ V."),

    ("Lenz's law is a statement of",
     ["Ohm's law", "conservation of charge", "conservation of energy", "the motor effect"], 2,
     "The induced current opposes the change that produced it. If it helped, you would get energy from nothing."),

    ("Moving the north pole of a magnet towards a coil induces a current. When the magnet is moved away, the current",
     ["is in the same direction", "is in the opposite direction", "is zero", "doubles"], 1,
     "The direction of the change has reversed, so the induced current must reverse to oppose it."),

    ("The e.m.f. induced in a coil can be increased by",
     ["using fewer turns", "moving the magnet more slowly", "using a stronger magnet", "cooling the coil"], 2,
     "A stronger magnet gives a bigger change of flux in the same time, so $N Delta Phi \/ Delta t$ is larger."),

    ("A generator converts",
     ["electrical energy into mechanical energy", "mechanical energy into electrical energy", "heat into work", "chemical energy into heat"], 1,
     "A generator is a motor run backwards: work turns the coil, and the changing flux across it drives a current."),

    ("An a.c. generator produces alternating current because",
     ["it has a commutator", "the coil's connections are not reversed, so the e.m.f. reverses each half turn", "it uses a weak magnet", "the coil is stationary"], 1,
     "Slip rings take the current out unchanged, and the induced e.m.f. changes sign every half revolution."),

    ("A transformer with 600 turns on the primary and 60 on the secondary is",
     ["a step-up transformer", "a step-down transformer", "an induction coil", "a commutator"], 1,
     "Fewer turns on the secondary means a smaller secondary voltage: the ratio is 10:1 downwards."),

    ("An ideal transformer has 2400 turns on the primary, 200 on the secondary, and 240 V at the primary. The secondary voltage is",
     ["2.0 V", "20 V", "24 V", "240 V"], 1,
     "$V_s = 240 times 200\/2400 = 20$ V."),

    ("In the transformer above the secondary current is 2.0 A. The primary current is",
     ["0.017 A", "0.17 A", "2.0 A", "20 A"], 1,
     "$V_p I_p = V_s I_s$ gives $I_p = (20 times 2.0)\/240 = 0.17$ A — a twentieth of the secondary current, because the voltage has been stepped up by twenty."),

    ("A transformer cannot step up both voltage and current because",
     ["it is not perfect", "that would create energy", "the core would saturate", "the frequency would change"], 1,
     "For a near-ideal transformer the power out cannot exceed the power in, so a larger voltage must come with a smaller current."),

    ("The core of a transformer is made of soft iron because soft iron",
     ["is cheap", "is easily magnetised and demagnetised", "has a high resistance", "is light"], 1,
     "It must follow the alternating flux with little loss, and it must not stay magnetised when the current stops."),

    ("The main energy losses in a transformer are",
     ["friction and sound", "copper loss and eddy currents", "radiation and convection", "chemical and nuclear"], 1,
     "The coils have resistance (copper loss) and the core carries induced currents (eddy currents); laminating and thick wire reduce both."),

    ("Power is transmitted at 330 kV rather than 33 kV because at the higher voltage",
     ["the current is ten times smaller and the $I^2 R$ loss a hundred times smaller", "the current is ten times larger", "the resistance is smaller", "the cables are lighter"], 0,
     "For the same power, $I = P\/V$, so ten times the voltage gives a tenth of the current and one hundredth of the $I^2 R$ loss."),

    ("A step-down transformer has 1000 turns on the primary and 50 on the secondary. With 240 V in, the secondary voltage is",
     ["12 V", "24 V", "48 V", "4800 V"], 0,
     "$V_s = 240 times 50\/1000 = 12$ V."),

    ("A magnetic field of 0.50 T acts on a 0.20 m wire carrying 3.0 A at 30° to the field. The force is",
     ["0.15 N", "0.30 N", "0.26 N", "0.50 N"], 0,
     "$F = B I l sin 30° = 0.50 times 3.0 times 0.20 times 0.5 = 0.15$ N."),

    ("A charged particle moving parallel to a magnetic field feels",
     ["a force along the field", "a force at right angles to the field", "no magnetic force", "a force towards the nearest pole"], 2,
     "The magnetic force on a moving charge depends on $sin theta$, where $theta$ is the angle between the velocity and the field."),

    ("The pattern of the magnetic field around a long straight wire consists of",
     ["straight lines along the wire", "circles centred on the wire", "radial lines", "closed loops through the wire"], 1,
     "The field circles the wire, and its direction is given by the right-hand grip rule: thumb along the current, fingers along the field."),

    ("Two parallel wires carry currents in opposite directions. The force between them is",
     ["attractive", "repulsive", "zero", "perpendicular to both wires and to the line joining them"], 1,
     "Opposite currents repel, just as like charges do. Two parallel beams of electrons therefore push each other apart."),

    ("The magnetic flux density at a distance d from a long straight wire carrying current I is",
     ["proportional to I and to d", "proportional to I and inversely proportional to d", "inversely proportional to I", "independent of I"], 1,
     "$B = mu_0 I \/(2 pi d)$: the field is proportional to the current and falls off as the distance."),

    ("A coil rotating in a magnetic field produces an e.m.f. that is",
     ["constant", "zero always", "greatest when the coil's plane is parallel to the field", "greatest when the coil is stationary"], 2,
     "The e.m.f. depends on the rate at which the coil cuts the lines, which is maximum when its plane is parallel to the field."),

    ("The device that uses electromagnetic induction to charge a car battery from the engine is the",
     ["starter motor", "alternator", "distributor", "carburettor"], 1,
     "The alternator is a generator driven by the engine, with a rectifier to turn its a.c. into the d.c. the battery needs."),

    ("A plotting compass placed near a bar magnet points along",
     ["the magnet's axis only", "the local magnetic field line", "the geographic north", "the magnet's surface"], 1,
     "The needle aligns with the field at that point, which is how field lines are mapped in the laboratory."),

    ("Increasing the number of turns on an electromagnet",
     ["weakens the field", "strengthens the field", "reverses the field", "has no effect"], 1,
     "Each turn adds its own field, so the total field grows with the number of turns — as it does with the current."),

    ("The force on a current-carrying wire in a magnetic field is used directly in",
     ["a generator", "an electric motor", "a transformer", "a capacitor"], 1,
     "The motor effect is the force on a current in a field, which is what turns the coil of a motor."),

    ("A transformer is connected to a 12 V d.c. supply. The secondary voltage is",
     ["12 V", "zero", "24 V", "6.0 V"], 1,
     "A steady current gives a steady flux, and a steady flux induces nothing. The transformer simply warms up through its coil resistance."),

    ("An induction coil in a school laboratory can produce a very high voltage from a 6 V cell because",
     ["it uses a large permanent magnet", "the rapid interruption of the primary current gives a very large $d Phi \/ d t$", "it has no iron core", "it converts heat into electricity"], 1,
     "The secondary e.m.f. is proportional to the rate of change of flux, and a quick break makes that rate enormous."),

    ("The magnetic force on a wire is at right angles to",
     ["the current", "the field", "both the current and the field", "neither"], 2,
     "Fleming's left-hand rule has the three directions mutually perpendicular, which is why the force can do no work on a charge moving along the wire."),

    ("A soft-iron core is placed inside a solenoid. The field inside the solenoid",
     ["is unchanged", "is greatly increased", "reverses", "is reduced to zero"], 1,
     "The iron becomes magnetised by the coil's field and adds its own, which is the principle of every electromagnet and transformer."),

    ("The e.m.f. induced in a coil is *not* affected by",
     ["the number of turns", "the rate of change of flux", "the strength of the magnet used", "the resistance of the coil"], 3,
     "Resistance sets the *current* that flows ($I = E\/R$) but not the e.m.f. that drives it — a subtle but regularly examined distinction."),

    ("A transformer has 90 % efficiency. If its primary takes 200 W, the power delivered to the load is",
     ["180 W", "200 W", "220 W", "20 W"], 0,
     "$P_s = 0.90 times 200 = 180$ W, and the other 20 W is lost as heat in the coils and core."),
]
