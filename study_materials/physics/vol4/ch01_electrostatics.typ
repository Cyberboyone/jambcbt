#import "template.typ": *

#current-chapter.update("Chapter 1: Electrostatics and Capacitors")

#pagebreak()

#chapter-opener(
  1,
  "Electrostatics and Capacitors",
  subtitle: "Electric Charge, Charging by Friction and by Induction, Coulomb's Law, Electric Field and Potential, and the Parallel-Plate Capacitor",
  syllabus-ref: "Sec. C • Electricity 1",
  utme-weight: "4 Qs every year",
  running: "Electrostatics and Capacitors",
)

#focus-radar(
  objectives: (
    "Describe electric charge, its two kinds, its conservation and its quantisation.",
    "Explain charging by friction and by induction, and the action of the gold-leaf electroscope.",
    "Use Coulomb's law $F = k q_1 q_2 \/ r^2$ and state the effect of a medium.",
    "Define electric field and field intensity, and draw field lines for simple arrangements.",
    "Define potential and potential difference, and use $E = V \/ d$ between parallel plates.",
    "Define capacitance and use $C = Q\/V$, $C = epsilon_0 epsilon_r A \/ d$ and $W = 1\/2 C V^2$.",
  ),
  hotspots: (
    "“Two charges of 2 µC and 8 µC are 0.30 m apart. The force between them is …” — 1.6 N, and the arithmetic is all in the powers of ten.",
    "“The electric field between plates 5 mm apart at 250 V is …” — 5.0 × 10⁴ V m⁻¹, because $E = V\/d$ and d must be in metres.",
    "“A charged rod attracts uncharged paper because …” — the paper is polarised, not charged.",
    "“Three capacitors of 2 µF are joined in series. The effective capacitance is …” — 0.67 µF, *less* than the smallest, which is the check.",
    "“The energy stored in a 470 µF capacitor at 12 V is …” — 0.034 J, from $1\/2 C V^2$ and not from $C V$.",
  ),
  trap-summary: "Three slips. (1) Leaving microcoulombs as coulombs: $1$ µC is $10^(-6)$ C, and a forgotten factor of $10^6$ turns a 2 N force into a 2 MN one. (2) Using the diameter or the separation in centimetres: Coulomb's law and $E = V\/d$ are both in SI, so every length goes in metres. (3) Adding capacitors the way resistors are added: capacitors in *parallel* add, capacitors in *series* combine as reciprocals — and the series answer must come out smaller than the smallest capacitor.",
)

// ============================================================================
== 1.1 Electric Charge

Rub a polythene rod with a silk cloth on a dry day and it will pick up scraps of paper, and if you hold it near a tap a thin stream of water bends towards it. Nothing has been added to the rod and nothing taken away; the rubbing has simply moved electrons from one body to the other. That is the whole of electrostatics in one experiment, and every question in this chapter is a consequence of it.

#concept-box("What charge is")[
  *Electric charge* is the property of a body that makes it exert a force on another charged body. There are two kinds, called positive and negative, and *like charges repel while unlike charges attract*.

  + Charge is *conserved*: it is neither created nor destroyed, only transferred from one body to another.
  + Charge is *quantised*: every charge is a whole-number multiple of the electronic charge, $e = 1.6 times 10^(-19)$ C, so $q = n e$ with $n$ an integer.
  + The unit is the *coulomb*, C. One coulomb is the charge carried past a point by a current of one ampere in one second, and it is an enormous amount of charge for a laboratory experiment.
]

#diagram-fig("diagrams/ch01_charging.svg",
  "The two ways to charge a body. Rubbing transfers electrons and leaves equal and opposite charges; induction separates charge inside a conductor without any contact, and the conductor keeps a net charge once it is earthed and the inducing rod is removed.", width: 100%)

*Charging by friction.* Two different materials are rubbed together. One holds its electrons more tightly than the other, so electrons move from the weaker holder to the stronger. The body that gains electrons becomes negative; the one that loses them becomes positive, with exactly the same size of charge. Protons never move — they are locked in the nucleus — so any statement that a rubbed rod "gained positive charge" means it *lost electrons*.

*Charging by induction.* Bring a negatively charged rod near an isolated metal sphere and the free electrons in the metal are pushed to the far side, leaving the near side positive. The sphere as a whole is still neutral. Now touch the far side briefly with a finger: the electrons run to earth, and when the finger and the rod are both removed the sphere is left positively charged. The rod has transferred no charge at all; it has only told the sphere's own electrons where to go.

#trap-box("A charged rod attracts a neutral body")[
  A rubbed rod will pick up bits of paper, and a candidate who sees attraction immediately concludes that the paper must carry the opposite charge. It does not. The rod's field *polarises* the paper — pulling opposite charge to the near face and pushing like charge to the far face — and because the near face is closer, the attraction wins. This is why a charged balloon sticks to a wall, and it is the standard one-mark explanation question in the section.
]

*The gold-leaf electroscope.* A metal rod with a thin gold leaf at the bottom, inside a glass case. Charge the cap and the leaf rises, because the leaf and the rod now carry the same charge and repel. The *divergence* of the leaf is the reading: more charge, more divergence. Bring a charged rod near the cap and watch what happens:

+ if the leaf *collapses*, the rod carries the opposite charge to the electroscope;
+ if the leaf *rises further*, the rod carries the same charge.

That test — collapse means opposite, rise means like — is asked far more often than the construction of the instrument itself.

*Where static charge goes.* A charge that has nowhere to go builds up until the air breaks down and a spark carries it away. That is the crackle from a nylon shirt, the shock from a car door, and the reason a fuel tanker is earthed by a chain before it discharges petrol. A lightning conductor does the same job on a building: it gives the charge a conducting path to the ground, and its pointed tip discharges some of the cloud before a strike can form.

// ============================================================================
== 1.2 Coulomb's Law

Two point charges push or pull on each other along the line joining them. The force is proportional to each charge and falls off as the square of the distance between them.

#formula-box("Coulomb's law in a vacuum")[
  *The force:* $F = (q_1 q_2)\/(4 pi epsilon_0 r^2) = k (q_1 q_2)\/r^2$, with $k = 9.0 times 10^9$ N m² C⁻². Here $q_1$ and $q_2$ are in coulombs, $r$ is the separation in metres, and $F$ is in newtons. The force on each charge is the same size and opposite in direction — Newton's third law applies to charges exactly as it does to blocks.

  *In a medium:* $F = (q_1 q_2)\/(4 pi epsilon_0 epsilon_r r^2)$. A dielectric between the charges *reduces* the force by the factor $epsilon_r$, so the force is largest in a vacuum.
]

#diagram-fig("diagrams/ch01_coulomb.svg",
  "Coulomb's law drawn: the force falls as 1/r², so doubling the separation quarters the force and tripling it cuts the force to one-ninth. The curve never reaches zero, which is why the field of a charge extends to infinity.", width: 84%)

The inverse-square form is worth fixing in words as well as in symbols, because the examiner asks it that way: *double the distance, quarter the force; halve the distance, quadruple it*. Any question that changes only the separation can be answered without touching the constant at all.

#worked-example(
  1,
  "The force between two point charges",
  [Two point charges of $+4.0$ µC and $-6.0$ µC are placed 0.30 m apart in air. Find the magnitude of the force between them, and state whether it is attractive or repulsive.],
  [
    Convert first: $4.0$ µC $= 4.0 times 10^(-6)$ C and $6.0$ µC $= 6.0 times 10^(-6)$ C.

    $F = k (q_1 q_2)\/r^2 = (9.0 times 10^9 times 4.0 times 10^(-6) times 6.0 times 10^(-6)) \/ (0.30)^2$

    $= (9.0 times 24 times 10^(-3)) \/ 0.09 = 0.216 \/ 0.09 = 2.4$ N.

    The charges have opposite signs, so the force is *attractive*.

    *Check.* Half the separation would give four times the force: at 0.15 m the answer would be 9.6 N, which is the sort of number the examiner offers as a distractor. And the size is sensible — a couple of newtons is about the weight of a small apple, which is what you feel when two charged combs are brought together.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Where the net force is zero",
  [A charge of $+2.0$ µC and a charge of $+8.0$ µC are 0.30 m apart. Find the point on the line between them at which a third charge would experience no net force.],
  [
    Call the distance from the 2.0 µC charge $x$; then the distance from the 8.0 µC charge is $(0.30 - x)$.

    At the null point the two forces are equal in size and opposite in direction:

    $k (2.0 times 10^(-6))\/x^2 = k (8.0 times 10^(-6))\/(0.30 - x)^2$

    $2\/x^2 = 8\/(0.30 - x)^2$ so $(0.30 - x)^2 = 4 x^2$, giving $0.30 - x = 2x$ and $x = 0.10$ m.

    The point is 0.10 m from the smaller charge and 0.20 m from the larger — nearer the smaller charge, as it must be, because the smaller charge needs a shorter distance to match the pull of the larger one.

    *Check.* Substitute back: $2\/0.01 = 200$ and $8\/0.04 = 200$ in units of $k times 10^(-6)$. Equal, so the forces cancel. The null point of two like charges always lies *between* them, and of two unlike charges always *outside* them on the side of the smaller.
  ],
  tier: "UTME STANDARD",
)

#trap-box("The units are the whole question")[
  Coulomb's law is written in SI, so a charge in microcoulombs and a separation in centimetres must both be converted before anything is squared. $1$ µC $= 10^(-6)$ C, $1$ nC $= 10^(-9)$ C, and $1$ cm $= 10^(-2)$ m. The most common wrong answer in this chapter is the right arithmetic with the distance left in centimetres — which is out by a factor of $10^4$.
]

// ============================================================================
== 1.3 The Electric Field

A charge does not have to touch another charge to push it; the force acts across empty space. Physicists describe that by saying the first charge fills the space around it with an *electric field*, and the second charge feels a force because it sits in that field.

#concept-box("Field and field intensity")[
  The *electric field intensity* $E$ at a point is the force per unit positive charge placed at that point:

  + *Definition:* $E = F \/ q$, in newtons per coulomb (N C⁻¹), which is the same as volts per metre (V m⁻¹).
  + *Field of a point charge:* $E = k Q \/ r^2$, directed away from a positive charge and towards a negative one.
  + The field is a *vector*: it has a direction, and fields from two charges add as vectors.

  Since the definition divides by a positive test charge, the field points the way a positive charge would be pushed. A negative charge feels a force in the *opposite* direction to the field.
]

#diagram-fig("diagrams/ch01_field.svg",
  "Field lines for six arrangements. Lines leave positive charge and end on negative charge, they never cross, and their crowding shows the strength of the field — which is why the lines between two plates are evenly spaced and the lines round a single charge are not.", width: 100%)

Three rules cover every field-line diagram the examiner asks for:

+ lines start on positive charge and end on negative charge (or run to infinity);
+ the tangent to a line at any point gives the direction of the field there, so lines never cross;
+ crowded lines mean a strong field, and evenly spaced parallel lines mean a *uniform* field — the space between two charged parallel plates.

#worked-example(
  3,
  "Field strength and the force it produces",
  [A charge of $+4.0$ µC is isolated in air. (a) Find the field intensity at a point 0.30 m from it. (b) Find the force on a charge of $5.0$ µC placed at that point.],
  [
    *(a)* $E = k Q \/ r^2 = (9.0 times 10^9 times 4.0 times 10^(-6)) \/ (0.30)^2 = (3.6 times 10^4) \/ 0.09 = 4.0 times 10^5$ N C⁻¹, directed away from the charge.

    *(b)* $F = q E = 5.0 times 10^(-6) times 4.0 times 10^5 = 2.0$ N, repulsive because both charges are positive.

    *Check.* Part (b) can be found the long way from Coulomb's law: $F = k q_1 q_2 \/ r^2 = (9.0 times 10^9 times 4.0 times 10^(-6) times 5.0 times 10^(-6)) \/ 0.09 = 0.18\/0.09 = 2.0$ N, the same answer. That is the point of the definition: dividing by the test charge and multiplying by it again must return the force you started with.
  ],
  tier: "FOUNDATION",
)

#shortcut-box("Reading a field diagram in five seconds")[
  + *Arrows leaving a body* — it is positive. *Arrows entering* — negative.
  + *Lines parallel and equally spaced* — uniform field, so use $E = V\/d$.
  + *Lines crowded* — strong field; *lines far apart* — weak field.
  + *No lines inside a hollow conductor* — the field there is zero, which is why a car is a safe place in a thunderstorm.
]

// ============================================================================
== 1.4 Potential and Potential Difference

Field tells you the *force* on a charge; potential tells you the *energy* it has because of where it is. The two are as different as a slope and a height, and the examiner tests the difference directly.

#formula-box("Potential, and the uniform field")[
  + *Definition of potential:* $V = W \/ q$, the work done in bringing unit positive charge from infinity to that point. One volt is one joule per coulomb.
  + *Potential difference:* the work done per coulomb in moving charge between two points, $V = W\/q$; a p.d. of 12 V means 12 J of energy per coulomb transferred.
  + *Uniform field between plates:* $E = V \/ d$, so the field is the potential gradient — volts per metre.

  In the uniform field, work done moving a charge $q$ through a p.d. $V$ is $W = q V$, and the force on the charge is $F = q E = q V \/ d$.
]

Two consequences follow, and both are examinable in one line each. First, potential is a *scalar*, so potentials simply add, while fields are vectors and may cancel. Second, a charge moving along an *equipotential* surface does no work and gains no energy, which is why the equipotentials between two plates are flat sheets parallel to the plates, at right angles to the field lines.

#worked-example(
  4,
  "Between the plates of a parallel-plate arrangement",
  [Two parallel metal plates 5.0 mm apart are connected to a 250 V supply. (a) Find the field intensity between them. (b) Find the force on an electron placed between them. (c) Find the work done in moving a charge of $2.0$ µC from one plate to the other.],
  [
    Convert the separation: $d = 5.0$ mm $= 5.0 times 10^(-3)$ m.

    *(a)* $E = V \/ d = 250 \/ (5.0 times 10^(-3)) = 5.0 times 10^4$ V m⁻¹.

    *(b)* $F = q E = 1.6 times 10^(-19) times 5.0 times 10^4 = 8.0 times 10^(-15)$ N, directed towards the positive plate.

    *(c)* $W = q V = 2.0 times 10^(-6) times 250 = 5.0 times 10^(-4)$ J.

    *Check.* The field is 50 kV m⁻¹, which is just under the breakdown field of dry air at about 3 MV m⁻¹ — so the arrangement is safe, which is what the "in air" in such a question is there to guarantee. The force on an electron is about $10^(-14)$ N, tiny in everyday terms, but the electron's mass is $9.1 times 10^(-31)$ kg, so its acceleration is of the order of $10^16$ m s⁻².
  ],
  tier: "UTME STANDARD",
)

#trap-box("Potential is not potential energy")[
  Potential is energy *per coulomb*; potential energy is energy. A 12 V battery gives every coulomb that passes through it 12 J, so 5 C gains 60 J — the same battery, two different numbers. Questions that ask "how much energy" want $W = q V$, and questions that ask "what is the potential" want volts.
]

// ============================================================================
== 1.5 Capacitors

A capacitor is two conductors separated by an insulator. Connect it to a battery and the battery pumps electrons from one plate to the other: one plate becomes positive, the other equally negative, and the field between them stores energy. Disconnect the battery and the charge stays — which is why a capacitor is the one component in the syllabus that stores charge rather than passing it.

#concept-box("Capacitance")[
  The *capacitance* $C$ of a conductor is the charge it holds per volt of potential difference:

  + *Definition:* $C = Q \/ V$, measured in farads (F). One farad is one coulomb per volt.
  + A farad is a very large capacitance; laboratory capacitors are quoted in microfarads (µF, $10^(-6)$ F) and picofarads (pF, $10^(-12)$ F).
  + Capacitance depends only on the *geometry* and the *insulator* — not on the charge or the voltage.
]

#diagram-fig("diagrams/ch01_capacitor.svg",
  "The parallel-plate capacitor and the three formulae that describe it. The field between the plates is uniform, E = V/d; the capacitance grows with plate area and shrinks with separation; and the energy stored is half the charge times the voltage.", width: 100%)

#formula-box("The capacitor formulae")[
  + *Definition:* $C = Q \/ V$.
  + *Parallel plates:* $C = epsilon_0 epsilon_r A \/ d$, with $A$ the area of overlap and $d$ the separation.
  + *Energy stored:* $W = 1\/2 C V^2 = 1\/2 Q V = Q^2 \/(2C)$.
  + *Combinations:* in *parallel*, $C = C_1 + C_2 + dots$; in *series*, $1\/C = 1\/C_1 + 1\/C_2 + dots$.

  The two combination rules are the *opposite* of the resistor rules of Chapter 2. Capacitors in parallel share the voltage and add their charges, so they add; capacitors in series share the same charge and split the voltage, so they combine as reciprocals.
]

*A dielectric.* Slip an insulating sheet between the plates and the molecules of the sheet line up, opposing the field. The capacitance rises by the *relative permittivity* $epsilon_r$ of the material — about 2.3 for polythene, 5 to 10 for mica, and about 80 for water. With the battery still connected the voltage is fixed and the extra charge flows in; with the battery removed the charge is fixed and the voltage falls. Both versions are asked, and the difference is which quantity is held constant.

#worked-example(
  5,
  "Two capacitors in series across a supply",
  [A $2.0$ µF capacitor and a $3.0$ µF capacitor are joined in series and the combination is connected across a 100 V supply. Find (a) the effective capacitance, (b) the charge on each capacitor, (c) the p.d. across each, and (d) the total energy stored.],
  [
    *(a)* $1\/C = 1\/2.0 + 1\/3.0 = 0.500 + 0.333 = 0.833$ µF⁻¹, so $C = 1.2$ µF.

    *(b)* In series the charge is the same on both: $Q = C V = 1.2 times 10^(-6) times 100 = 1.2 times 10^(-4)$ C.

    *(c)* $V_1 = Q\/C_1 = (1.2 times 10^(-4))\/(2.0 times 10^(-6)) = 60$ V, and $V_2 = Q\/C_2 = 40$ V.

    *(d)* $W = 1\/2 C V^2 = 1\/2 times 1.2 times 10^(-6) times 100^2 = 6.0 times 10^(-3)$ J.

    *Check.* The two voltages add to 100 V, as they must. The energy can be found a second way, $W = 1\/2 Q V = 1\/2 times 1.2 times 10^(-4) times 100 = 6.0 times 10^(-3)$ J, and the effective capacitance is 1.2 µF — *smaller* than the 2.0 µF capacitor, which is the sanity test for any series combination.
  ],
  tier: "JAMB CHALLENGE",
)

#trap-box("A capacitor is not a battery")[
  A capacitor stores *charge*, and it stores very little energy for its size; a battery stores chemical energy and delivers a steady voltage. A charged capacitor can hold its voltage with nothing connected, which is why a television can still bite minutes after it is switched off — and it is why the examiner's "why does the lamp go out?" questions have two different answers depending on which component is in the circuit.
]

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: electrostatics and capacitors.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Charge comes in two kinds, is conserved, and arrives in whole multiples of $1.6 times 10^(-19)$ C; rubbing transfers electrons, and induction separates charge in a conductor without contact. Two point charges push or pull with $F = k q_1 q_2 \/ r^2$, an inverse-square law that quarters the force when the separation doubles, and the space round a charge is filled with a field $E = F\/q$ whose lines leave positive charge and end on negative. Potential is the energy per coulomb, $V = W\/q$, and between parallel plates the field is the potential gradient, $E = V\/d$. A capacitor is two conductors separated by an insulator; it stores charge according to $C = Q\/V$, its capacitance is fixed by $C = epsilon_0 epsilon_r A \/ d$, its energy is $1\/2 C V^2$, and capacitors in parallel add while capacitors in series combine as reciprocals. Every numerical question in the chapter is one of those seven lines with the units converted first.
  ]
]

== 1.6 Chapter 1 in the Exam Hall — a Two-Minute Set

#mcq(1, [Two point charges of $+2.0$ µC and $+8.0$ µC are 0.30 m apart in air. The force between them is], [0.16 N], [1.6 N], [16 N], [160 N])
#mcq(2, [A body is charged positively by rubbing. This is because it], [gains protons], [loses protons], [gains electrons], [loses electrons])
#mcq(3, [The electric field between two parallel plates 4.0 mm apart connected to a 120 V supply is], [3.0 × 10² V m⁻¹], [4.8 × 10² V m⁻¹], [3.0 × 10⁴ V m⁻¹], [4.8 × 10⁴ V m⁻¹])
#mcq(4, [Three capacitors of 3.0 µF each are connected in series. The effective capacitance is], [1.0 µF], [3.0 µF], [6.0 µF], [9.0 µF])

#answer-key-grid(("B", "D", "C", "A"))

#answer-notes((
  ("B", [$F = 9.0 times 10^9 times 2.0 times 10^(-6) times 8.0 times 10^(-6) \/ 0.09 = 1.6$ N. Repulsive, because both charges are positive.]),
  ("D", [rubbing moves electrons; the body that loses them is left with a net positive charge. Protons stay in the nucleus.]),
  ("C", [$E = V\/d = 120 \/ (4.0 times 10^(-3)) = 3.0 times 10^4$ V m⁻¹. The separation must be in metres.]),
  ("A", [$1\/C = 3 times (1\/3.0) = 1.0$ µF⁻¹, so $C = 1.0$ µF — one third of a single capacitor, which is the check that the series rule has been used and not the parallel one.]),
))

#chapter-checklist("Before you leave Chapter 1", (
  [State the two kinds of charge and the law of force between them.],
  [Explain charging by friction and by induction in one sentence each.],
  [Use $F = k q_1 q_2 \/ r^2$ with every quantity in SI units.],
  [Draw the field lines for a point charge, a pair of like charges and a pair of plates.],
  [Use $E = V\/d$ and $W = q V$ without being told which is which.],
  [Quote $C = Q\/V$, $C = epsilon_0 epsilon_r A \/ d$ and $W = 1\/2 C V^2$, and combine capacitors in series and parallel.],
))

#concept-box("Carry this into Chapter 2")[
  A charge that has somewhere to go becomes a current, and the same field that pushes a scrap of paper will push electrons through a wire. Chapter 2 takes the charge of this chapter, sets it moving, and turns it into the three quantities every circuit question is built from: current, potential difference and resistance.
]
