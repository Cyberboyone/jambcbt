"""Paper bank for Chapter 1 — electrostatics and capacitors.

These items never appear in the end-of-chapter drill. The deck builder deals
them round-robin, so the papers mix the six chapters the way a CBT paper does.
"""

PAPER_1 = [
    ("A body carrying a charge of 1.12 × 10⁻¹⁸ C has",
     ["gained 7 electrons", "lost 7 electrons", "gained 2 electrons", "lost 2 electrons"], 1,
     "$n = 1.12 times 10^(-18) \/ 1.6 times 10^(-19) = 7$. The body is positive, so it has *lost* seven electrons."),

    ("A charge of 250 µC is",
     ["2.5 × 10⁻⁴ C", "2.5 × 10⁻⁶ C", "2.5 × 10⁻³ C", "2.5 × 10² C"], 0,
     "Micro means $10^(-6)$, so 250 µC is $250 times 10^(-6) = 2.5 times 10^(-4)$ C."),

    ("Two charges of 5.0 µC each are 0.10 m apart in air. The force between them is",
     ["2.3 N, repulsive", "22.5 N, repulsive", "0.23 N, repulsive", "22.5 N, attractive"], 1,
     "$F = 9.0 times 10^9 times (5.0 times 10^(-6))^2 \/ (0.10)^2 = 22.5$ N; like charges repel."),

    ("Two charges of 3.0 µC each are 0.30 m apart. The force between them is",
     ["0.90 N, repulsive", "0.30 N, repulsive", "9.0 N, repulsive", "0.90 N, attractive"], 0,
     "$F = 9.0 times 10^9 times 9.0 times 10^(-12) \/ 0.09 = 0.90$ N. Squaring 0.30 is the step most often skipped."),

    ("The separation between two point charges is tripled. The force between them becomes",
     ["three times as large", "one third as large", "nine times as large", "one ninth as large"], 3,
     "The force goes as $1\/r^2$, and $3^2 = 9$, so the force falls to one ninth."),

    ("The electric field intensity 0.050 m from a charge of 2.0 µC is",
     ["3.6 × 10⁵ N C⁻¹", "7.2 × 10⁶ N C⁻¹", "1.8 × 10⁵ N C⁻¹", "7.2 × 10⁴ N C⁻¹"], 1,
     "$E = k Q \/ r^2 = 9.0 times 10^9 times 2.0 times 10^(-6) \/ (0.050)^2 = 7.2 times 10^6$ N C⁻¹."),

    ("A charge of 3.0 µC is placed in an electric field of 2.0 × 10⁴ N C⁻¹. The force on it is",
     ["6.0 × 10⁻² N", "6.0 × 10⁻¹ N", "1.5 × 10⁻¹⁰ N", "6.0 × 10¹⁰ N"], 0,
     "$F = q E = 3.0 times 10^(-6) times 2.0 times 10^4 = 6.0 times 10^(-2)$ N."),

    ("Two parallel plates 2.0 mm apart carry a p.d. of 60 V. The field between them is",
     ["1.2 × 10² V m⁻¹", "3.0 × 10⁴ V m⁻¹", "1.2 × 10⁵ V m⁻¹", "3.0 × 10² V m⁻¹"], 1,
     "$E = V\/d = 60 \/ (2.0 times 10^(-3)) = 3.0 times 10^4$ V m⁻¹."),

    ("The work done in moving a charge of 4.0 C through a p.d. of 20 V is",
     ["5.0 J", "24 J", "80 J", "0.20 J"], 2,
     "$W = q V = 4.0 times 20 = 80$ J. One volt is one joule per coulomb, so the multiplication is all that is needed."),

    ("A 4.0 µF capacitor is charged to 50 V. The charge stored is",
     ["2.0 × 10⁻⁴ C", "1.25 × 10⁻⁵ C", "2.0 × 10⁻² C", "8.0 × 10⁻⁴ C"], 0,
     "$Q = C V = 4.0 times 10^(-6) times 50 = 2.0 times 10^(-4)$ C."),

    ("A 4.0 µF capacitor charged to 50 V stores an energy of",
     ["1.0 × 10⁻² J", "5.0 × 10⁻³ J", "2.0 × 10⁻⁴ J", "1.0 × 10⁻¹ J"], 1,
     "$W = 1\/2 C V^2 = 0.5 times 4.0 times 10^(-6) times 2500 = 5.0 times 10^(-3)$ J."),

    ("A 10 µF and a 15 µF capacitor are joined in parallel. The combination is",
     ["6.0 µF", "12.5 µF", "25 µF", "150 µF"], 2,
     "In parallel the capacitances add: $10 + 15 = 25$ µF, because both are across the same p.d."),

    ("A 6.0 µF and a 3.0 µF capacitor are joined in series. The combination is",
     ["2.0 µF", "4.5 µF", "9.0 µF", "18 µF"], 0,
     "$1\/C = 1\/6.0 + 1\/3.0 = 1\/2.0$, so $C = 2.0$ µF — smaller than either capacitor."),

    ("A 6.0 µF capacitor is charged to 200 V. The energy stored is",
     ["0.12 J", "0.24 J", "1.2 J", "2.4 J"], 0,
     "$W = 1\/2 C V^2 = 0.5 times 6.0 times 10^(-6) times 4.0 times 10^4 = 0.12$ J."),

    ("A capacitor is charged and then disconnected from its battery. A dielectric is inserted. The p.d. across the plates",
     ["rises", "falls", "stays the same", "falls to zero"], 1,
     "The charge is trapped, so $Q$ is fixed; the dielectric raises $C$, and $V = Q\/C$ must therefore fall."),

    ("The capacitance of a parallel-plate capacitor is *reduced* if",
     ["the area of the plates is increased", "the separation is increased", "a dielectric is inserted", "the p.d. is reduced"], 1,
     "$C = epsilon_0 epsilon_r A \/ d$: increasing $d$ reduces $C$. The p.d. plays no part in the capacitance itself."),

    ("An uncharged metal sphere is brought near a negatively charged rod but not touched. The near side of the sphere",
     ["becomes negative", "becomes positive", "stays neutral and unaffected", "loses electrons to the rod"], 1,
     "Electrons in the conductor are repelled to the far side, leaving the near side positive — polarisation without any transfer of charge."),

    ("A positively charged electroscope is touched with a negatively charged rod. The leaf",
     ["rises further", "falls", "stays exactly the same", "falls and then rises"], 1,
     "The rod's electrons neutralise some of the positive charge, so the leaf falls. A rod of the same charge would make it rise."),

    ("The electric field inside a charged hollow conductor is",
     ["equal to the field at its surface", "zero", "largest at the centre", "directed inwards"], 1,
     "There is no field inside a conductor in equilibrium, which is the principle of the Faraday cage and of the coaxial cable's screen."),

    ("The force between two charges in air is 12 N. In a medium of relative permittivity 3, the force becomes",
     ["36 N", "4.0 N", "12 N", "0.25 N"], 1,
     "The force is divided by $epsilon_r$: $12\/3 = 4.0$ N. A medium always weakens the force compared with a vacuum."),

    ("A charge of 8.0 µC is 0.20 m from a charge of 2.0 µC. The force is",
     ["3.6 N", "0.72 N", "36 N", "0.36 N"], 0,
     "$F = 9.0 times 10^9 times 8.0 times 10^(-6) times 2.0 times 10^(-6) \/ 0.04 = 3.6$ N."),

    ("Which quantity is a scalar?",
     ["electric field intensity", "electric force", "electric potential", "electric field line direction"], 2,
     "Potential is energy per unit charge, with magnitude but no direction. Field and force are both vectors."),

    ("The potential at a point 0.10 m from a charge of 2.0 µC is",
     ["1.8 × 10⁵ V", "9.0 × 10⁴ V", "1.8 × 10⁶ V", "1.8 × 10⁴ V"], 0,
     "$V = k Q \/ r = 9.0 times 10^9 times 2.0 times 10^(-6) \/ 0.10 = 1.8 times 10^5$ V."),

    ("Two capacitors of 2.0 µF and 4.0 µF are in series across 60 V. The p.d. across the 2.0 µF capacitor is",
     ["20 V", "30 V", "40 V", "60 V"], 2,
     "In series the p.d.s divide *inversely* with capacitance: the smaller capacitor takes the larger share. $V_2 = 60 times 4\/(2+4) = 40$ V."),

    ("The total capacitance of three 6.0 µF capacitors in parallel is",
     ["2.0 µF", "6.0 µF", "18 µF", "36 µF"], 2,
     "Parallel capacitances add: $3 times 6.0 = 18$ µF."),

    ("The total capacitance of three 6.0 µF capacitors in series is",
     ["2.0 µF", "6.0 µF", "18 µF", "36 µF"], 0,
     "$1\/C = 3 times (1\/6.0) = 0.5$ µF⁻¹, so $C = 2.0$ µF."),

    ("A capacitor is said to have a capacitance of 1 F when",
     ["it stores 1 J at 1 V", "it holds 1 C at 1 V", "it passes 1 A at 1 V", "it has plates 1 m apart"], 1,
     "$C = Q\/V$, so one farad is one coulomb per volt — a very large unit, which is why most capacitors are quoted in µF or pF."),

    ("The energy stored in a capacitor can also be written as",
     ["$Q V$", "$Q^2 \/(2C)$", "$Q C$", "$Q V^2$"], 1,
     "Substituting $V = Q\/C$ into $1\/2 C V^2$ gives $Q^2\/(2C)$. The three forms $1\/2 C V^2$, $1\/2 Q V$ and $Q^2\/(2C)$ are the same energy."),

    ("Electrostatic precipitators clean chimney smoke because",
     ["smoke particles are magnetic", "charged dust particles are attracted to earthed plates", "the smoke is cooled", "the plates burn the dust"], 1,
     "The dust is ionised and then attracted to plates of opposite charge, where it collects and is knocked off — the same principle as electrostatic painting."),

    ("A polythene rod rubbed with wool becomes negatively charged because polythene",
     ["gains electrons from the wool", "loses electrons to the wool", "gains protons", "loses protons"], 0,
     "Electrons are transferred from the wool to the polythene. The wool is left with an equal positive charge, so the pair stays neutral overall."),

    ("The electric field between two parallel plates is uniform, so the force on a charge placed between them",
     ["increases towards the plates", "is the same everywhere between the plates", "is zero", "depends on the charge's position"], 1,
     "A uniform field means the same $E$ everywhere, so $F = qE$ is the same wherever the charge sits between the plates."),

    ("An electron and a proton are placed in the same uniform electric field. The force on the electron",
     ["is smaller and in the same direction", "is larger and in the opposite direction", "is the same size and in the same direction", "is zero"], 1,
     "The charges are equal and opposite, so the forces are equal in size — but the electron is pushed against the field and the proton along it."),

    ("A capacitor of 2.0 µF and one of 8.0 µF are in parallel across a 40 V supply. The charge on the 8.0 µF capacitor is",
     ["3.2 × 10⁻⁴ C", "8.0 × 10⁻⁵ C", "4.0 × 10⁻⁴ C", "1.6 × 10⁻⁴ C"], 0,
     "In parallel each capacitor has the full 40 V: $Q = 8.0 times 10^(-6) times 40 = 3.2 times 10^(-4)$ C."),

    ("Two identical capacitors in series store, between them, an energy that is",
     ["the same as one alone at the same p.d.", "twice that of one alone", "half that of one alone at the same p.d.", "four times that of one alone"], 2,
     "The series combination has half the capacitance, so $1\/2 C V^2$ is halved for the same total p.d."),

    ("The force between two charges is F. If one charge is doubled and the distance is halved, the force becomes",
     ["F/2", "2F", "4F", "8F"], 3,
     "Doubling a charge doubles the force; halving the distance multiplies it by 4. Together: $2 times 4 = 8$."),

    ("A charged body attracts a neutral insulator because the insulator",
     ["conducts charge away", "becomes polarised", "gains a net charge", "loses mass"], 1,
     "The molecules of an insulator realign so that the nearer end is oppositely charged, and the attraction to the nearer end wins."),

    ("Two charges of +2.0 µC and +8.0 µC are 0.30 m apart. Where is the neutral point?",
     ["0.10 m from the 2.0 µC charge", "0.15 m from the 2.0 µC charge", "0.20 m from the 2.0 µC charge", "0.30 m from the 2.0 µC charge"], 0,
     "The neutral point lies between them, nearer the smaller charge, where the two fields cancel: at 0.10 m from the 2 µC and 0.20 m from the 8 µC."),

    ("A capacitor is fully charged from a battery and the battery is removed. The charge on the plates then",
     ["leaks away at once", "stays on the plates", "doubles", "reverses"], 1,
     "With no complete circuit the plates hold their charge, which is why a charged capacitor can still give a shock long after the supply is switched off."),

    ("The unit of permittivity of free space, ε₀, is",
     ["F m⁻¹", "F m", "C m⁻²", "N m² C⁻²"], 0,
     "In $F = q_1 q_2 \/(4 pi epsilon_0 r^2)$ the constant $epsilon_0$ has units of F m⁻¹, the same as capacitance per unit length."),

    ("Two capacitors of 3.0 µF and 6.0 µF are in series across 90 V. The charge on each is",
     ["1.8 × 10⁻⁴ C", "2.7 × 10⁻⁴ C", "5.4 × 10⁻⁴ C", "9.0 × 10⁻⁵ C"], 0,
     "Series capacitance is 2.0 µF, and the same charge is on both: $Q = 2.0 times 10^(-6) times 90 = 1.8 times 10^(-4)$ C."),
]
