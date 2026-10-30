"""Chapter 1 drill bank — electrostatics and capacitors.

Each item is (stem, [option A, B, C, D], index of the correct option, solution).
The solution names the concept and shows the working, so that a wrong answer
can be traced to a section of the chapter rather than to "carelessness".
"""

DRILL_1 = [
    ("A body carrying a charge of 3.2 × 10⁻¹⁹ C has gained",
     ["1 electron", "2 electrons", "3 electrons", "20 electrons"], 1,
     "$n = q/e = 3.2 times 10^(-19) \/ 1.6 times 10^(-19) = 2$ electrons. Charge is quantised, so every charge is a whole multiple of e."),

    ("The charge on a body is 5.0 µC. In coulombs this is",
     ["5.0 × 10³ C", "5.0 × 10⁻³ C", "5.0 × 10⁻⁶ C", "5.0 × 10⁶ C"], 2,
     "The prefix micro means $10^(-6)$, so 5.0 µC is $5.0 times 10^(-6)$ C. Leaving a charge in microcoulombs inside Coulomb's law makes the answer $10^12$ times too large."),

    ("Two charges are brought from a separation of 0.20 m to 0.10 m. The force between them",
     ["halves", "doubles", "is unchanged", "becomes four times as large"], 3,
     "The force is inversely proportional to the square of the separation, and halving the separation multiplies the force by $2^2 = 4$."),

    ("Two positive charges of 2.0 µC and 8.0 µC are 0.30 m apart in air. The force between them is",
     ["0.16 N, repulsive", "1.6 N, repulsive", "1.6 N, attractive", "16 N, repulsive"], 1,
     "$F = 9.0 times 10^9 times 2.0 times 10^(-6) times 8.0 times 10^(-6) \/ (0.30)^2 = 1.6$ N. Both charges are positive, so the force is repulsive."),

    ("A charge of +4.0 µC and a charge of −6.0 µC are 0.30 m apart. The force between them is",
     ["2.4 N, attractive", "2.4 N, repulsive", "24 N, attractive", "0.24 N, attractive"], 0,
     "$F = 9.0 times 10^9 times 4.0 times 10^(-6) times 6.0 times 10^(-6) \/ 0.09 = 2.4$ N, and unlike charges attract."),

    ("A body is charged negatively by friction. This is because it",
     ["gains electrons", "loses electrons", "gains protons", "loses protons"], 0,
     "Rubbing transfers electrons from one body to the other. The body that gains electrons becomes negative, and the other keeps an equal positive charge."),

    ("A charged rod attracts a small piece of paper. The paper must",
     ["be uncharged or carry the opposite charge", "carry the same charge as the rod", "be a magnet", "be an insulator carrying no charge at all — attraction is impossible"], 0,
     "A charged body polarises a neutral one and attracts it, so attraction alone does not prove the paper is charged. Repulsion, by contrast, proves that both bodies carry the same charge."),

    ("The gold leaf of an electroscope diverges further when a charged rod is brought near the cap. The rod",
     ["carries the same charge as the electroscope", "carries the opposite charge", "is uncharged", "is earthed"], 0,
     "Like charges repel, so the leaf rises further when the rod carries the same charge. A rod of the opposite charge would make the leaf fall."),

    ("A lightning conductor protects a building mainly because",
     ["it attracts lightning away from the roof", "it insulates the building", "it gives the charge a conducting path to the earth", "it stores the charge until the storm passes"], 2,
     "The conductor is a thick copper strip from the highest point to the ground, so the charge of a strike — and some of the charge in the cloud — is carried harmlessly to earth."),

    ("Electric field intensity at a point is defined as",
     ["the force on any charge at that point", "the force per unit positive charge at that point", "the work done per unit charge", "the charge per unit area"], 1,
     "$E = F\/q$ for a positive test charge. Dividing by a *positive* charge is what gives the field its direction, away from positive charge and towards negative."),

    ("A charge of 4.0 µC is isolated in air. The field intensity 0.30 m from it is",
     ["4.0 × 10⁵ N C⁻¹", "1.2 × 10⁵ N C⁻¹", "1.3 × 10⁴ N C⁻¹", "4.0 × 10³ N C⁻¹"], 0,
     "$E = k Q\/r^2 = 9.0 times 10^9 times 4.0 times 10^(-6) \/ 0.09 = 4.0 times 10^5$ N C⁻¹, directed away from the charge."),

    ("The unit of electric field intensity may be written as",
     ["N C", "J C", "N C⁻¹ or V m⁻¹", "C V⁻¹"], 2,
     "$E = F\/q$ gives newtons per coulomb; $E = V\/d$ gives volts per metre. The two are the same unit, which is a useful check."),

    ("Two parallel plates 4.0 mm apart are connected to a 120 V supply. The field between them is",
     ["3.0 × 10² V m⁻¹", "3.0 × 10⁴ V m⁻¹", "4.8 × 10² V m⁻¹", "4.8 × 10⁴ V m⁻¹"], 1,
     "$E = V\/d = 120 \/ (4.0 times 10^(-3)) = 3.0 times 10^4$ V m⁻¹. The separation must be converted to metres before dividing."),

    ("An electron is placed between two parallel plates with a field of 5.0 × 10⁴ V m⁻¹. The force on it is about",
     ["8.0 × 10⁻¹⁵ N, towards the positive plate", "8.0 × 10⁻¹⁵ N, towards the negative plate", "3.1 × 10⁻²³ N, towards the positive plate", "1.6 × 10⁻¹⁹ N, towards the negative plate"], 0,
     "$F = e E = 1.6 times 10^(-19) times 5.0 times 10^4 = 8.0 times 10^(-15)$ N. A negative charge feels a force opposite to the field, so it is pulled towards the positive plate."),

    ("The potential difference between two points is 12 V. The work done in moving 5.0 C between them is",
     ["0.42 J", "2.4 J", "17 J", "60 J"], 3,
     "$W = q V = 5.0 times 12 = 60$ J. A potential difference of 12 V means 12 J for every coulomb moved."),

    ("The capacitance of a capacitor is defined as",
     ["the charge it stores", "the energy it stores", "the charge per unit potential difference", "the potential difference per unit charge"], 2,
     "$C = Q\/V$. Capacitance is a property of the construction — the area, the separation and the dielectric — not of how much charge happens to be on it."),

    ("A capacitor holds 60 µC when the p.d. across it is 12 V. Its capacitance is",
     ["0.20 µF", "5.0 µF", "72 µF", "720 µF"], 1,
     "$C = Q\/V = 60 times 10^(-6) \/ 12 = 5.0 times 10^(-6)$ F $= 5.0$ µF."),

    ("The energy stored in a 470 µF capacitor charged to 12 V is about",
     ["0.034 J", "0.068 J", "5.6 J", "68 J"], 0,
     "$W = 1\/2 C V^2 = 0.5 times 470 times 10^(-6) times 144 = 0.034$ J. Using $C V^2$ instead of half of it gives twice the right answer."),

    ("Three capacitors of 3.0 µF each are joined in series. The effective capacitance is",
     ["1.0 µF", "3.0 µF", "6.0 µF", "9.0 µF"], 0,
     "$1\/C = 3 times (1\/3.0) = 1.0$ µF⁻¹, so $C = 1.0$ µF. A series combination is always smaller than the smallest capacitor in it."),

    ("Two capacitors of 2.0 µF and 3.0 µF are joined in parallel. The effective capacitance is",
     ["1.2 µF", "2.5 µF", "5.0 µF", "6.0 µF"], 2,
     "In parallel the capacitances simply add: $2.0 + 3.0 = 5.0$ µF, because each is connected across the same p.d."),

    ("A dielectric of relative permittivity 2.5 is placed between the plates of a capacitor with the battery still connected. The charge on the plates",
     ["falls to 40 % of its value", "is unchanged", "rises by a factor of 2.5", "rises by a factor of 6.25"], 2,
     "With the battery connected the p.d. is fixed, so $Q = C V$ rises in proportion to $C$, and $C$ rises by the factor $epsilon_r = 2.5$."),

    ("The capacitance of a parallel-plate capacitor is doubled if",
     ["the separation is doubled", "the area is halved", "the separation is halved", "the p.d. is doubled"], 2,
     "$C = epsilon_0 epsilon_r A \/ d$: halving $d$ doubles $C$. Changing the p.d. changes the charge but not the capacitance."),

    ("A capacitor is described as storing charge rather than passing current because",
     ["it contains a dielectric", "it blocks direct current once charged", "it has a very large resistance", "it converts charge into heat"], 1,
     "Once charged, the two plates hold fixed charges and no further current flows, so a capacitor blocks d.c. An alternating supply keeps recharging it, so a.c. does pass."),

    ("A charged rod is brought near an isolated metal sphere without touching it. The sphere",
     ["gains a net charge of the same sign", "gains a net charge of the opposite sign", "remains neutral overall but is polarised", "loses all its electrons"], 2,
     "Induction separates charge inside the conductor, but the sphere is isolated, so its net charge stays zero until it is earthed."),

    ("A metal sphere is earthed while a negatively charged rod is held near it, and the earth connection is then removed before the rod. The sphere is left",
     ["negatively charged", "positively charged", "neutral", "magnetised"], 1,
     "Electrons are pushed to the far side and run to earth, so the sphere loses electrons and is left positive. This is charging by induction."),

    ("Electric field lines between two charged parallel plates are",
     ["concentric circles", "parallel and equally spaced", "radial, from the centre of each plate", "closed loops round the plates"], 1,
     "A uniform field is drawn as parallel, equally spaced lines, and in a uniform field $E = V\/d$ can be used directly."),

    ("Field lines around an isolated positive charge",
     ["enter the charge", "leave the charge and run to infinity", "form closed loops through the charge", "are parallel"], 1,
     "By convention field lines leave positive charge and end on negative charge, or run to infinity when there is nothing else in the field."),

    ("The force between two charges in a medium of relative permittivity 4 is",
     ["four times the force in a vacuum", "twice the force in a vacuum", "a quarter of the force in a vacuum", "unchanged"], 2,
     "$F = q_1 q_2 \/(4 pi epsilon_0 epsilon_r r^2)$, so the force is divided by $epsilon_r = 4$. The force is largest in a vacuum."),

    ("Two equal charges are 0.20 m apart and repel each other with 0.90 N. If each charge is doubled, the force becomes",
     ["0.45 N", "0.90 N", "1.8 N", "3.6 N"], 3,
     "$F prop q_1 q_2$, so doubling both charges multiplies the force by $2 times 2 = 4$: $0.90 times 4 = 3.6$ N."),

    ("A charge of 2.0 µC is moved through a p.d. of 500 V. The energy transferred is",
     ["1.0 × 10⁻³ J", "2.5 × 10⁻⁴ J", "4.0 × 10⁻³ J", "1.0 × 10³ J"], 0,
     "$W = q V = 2.0 times 10^(-6) times 500 = 1.0 times 10^(-3)$ J."),

    ("The electric field inside a hollow conductor with no charge inside it is",
     ["equal to the field at its surface", "largest at the centre", "zero", "directed radially outwards"], 2,
     "A conductor in equilibrium has no field inside it, which is why a car is a relatively safe place in a thunderstorm."),

    ("A capacitor of 2.0 µF is charged to 100 V. The charge stored is",
     ["2.0 × 10⁻⁴ C", "5.0 × 10⁻³ C", "2.0 × 10⁻² C", "5.0 × 10⁻⁵ C"], 0,
     "$Q = C V = 2.0 times 10^(-6) times 100 = 2.0 times 10^(-4)$ C."),

    ("Two capacitors in series are connected across a supply. The charge on each capacitor is",
     ["different, and larger on the smaller capacitor", "the same on both", "different, and larger on the larger capacitor", "zero on one of them"], 1,
     "In series there is only one path, so the same charge flows onto both plates. The p.d.s then divide in inverse proportion to the capacitances."),

    ("Electrostatic painting works because",
     ["paint is a conductor", "charged paint droplets are attracted to an oppositely charged object", "the paint is magnetised", "the spray gun heats the paint"], 1,
     "The droplets are charged and the object is earthed or oppositely charged, so the paint is attracted to it and wraps round the back as well as the front."),

    ("Which of the following is *not* a property of electric charge?",
     ["it is conserved", "it is quantised", "it is created when a body is rubbed", "it exerts a force on other charges"], 2,
     "Rubbing *transfers* charge; it never creates it. Conservation and quantisation are both properties the examiner expects you to state."),

    ("A charge of 1.0 C passes through a point in 1.0 s. The current is",
     ["1.0 A", "1.0 V", "1.0 J", "1.0 W"], 0,
     "$I = Q\/t = 1.0$ A. The coulomb is defined so that one coulomb per second is one ampere."),

    ("The capacitance of a capacitor does *not* depend on",
     ["the area of the plates", "the separation of the plates", "the dielectric between the plates", "the potential difference across it"], 3,
     "$C = epsilon_0 epsilon_r A \/ d$ contains only the geometry and the material. The p.d. sets the charge, not the capacitance."),

    ("A body has a charge of −4.8 × 10⁻¹⁹ C. The number of electrons it has gained is",
     ["1", "2", "3", "4"], 2,
     "$n = 4.8 times 10^(-19) \/ 1.6 times 10^(-19) = 3$. A charge that is not a whole multiple of e cannot occur on an isolated body."),

    ("A capacitor stores 0.50 J at 100 V. Its capacitance is",
     ["1.0 × 10⁻⁴ F", "5.0 × 10⁻⁵ F", "2.0 × 10⁻⁴ F", "1.0 × 10⁻² F"], 0,
     "$W = 1\/2 C V^2$, so $C = 2W\/V^2 = 2 times 0.50 \/ 10^4 = 1.0 times 10^(-4)$ F."),

    ("The direction of the electric field at a point is the direction of",
     ["the force on an electron there", "the force on a positive charge there", "the motion of a neutral atom there", "the current in a nearby wire"], 1,
     "The field is defined by the force on a *positive* test charge, which is why an electron — being negative — is pushed the opposite way."),
]
