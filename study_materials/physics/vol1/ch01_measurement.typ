#import "template.typ": *

#current-chapter.update("Chapter 1: Measurement, Units and Dimensions")
#pagebreak()

#chapter-opener(
  1,
  "Measurement, Units and Dimensions",
  subtitle: "Physical Quantities and the SI System, Prefixes and Standard Form, Dimensions and Dimensional Analysis, the Vernier Calliper and the Micrometer, Errors and Significant Figures, Scalars, Vectors, Resultants and Resolution",
  syllabus-ref: "Sec. A • Topic 1",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Distinguish fundamental from derived quantities and name the seven SI base units.",
    "Convert between units, and between ordinary and standard form, without losing a power of ten.",
    "Write the dimensions of a derived quantity and use homogeneity to test an equation.",
    "Read a metre rule, a vernier calliper and a micrometer screw gauge, allowing for zero error.",
    "Distinguish accuracy from precision, and systematic from random error.",
    "Add two vectors by the triangle and parallelogram laws, and resolve a vector into components.",
    "Resolve the weight of a body on an inclined plane.",
  ),
  hotspots: (
    "“The dimension of force is …” — $[M L T^(-2)]$, and of work or energy $[M L^2 T^(-2)]$.",
    "“The reading of the micrometer is …” — sleeve in mm, plus thimble hundredths, minus zero error.",
    "“Which instrument measures the diameter of a wire most accurately?” — the micrometer, least count 0.01 mm.",
    "“The resultant of two forces at an angle θ is …” — $sqrt(F_1^2 + F_2^2 + 2F_1 F_2 cos theta)$.",
    "“The component of a weight down an incline of 30° is …” — $W sin 30 degree = W / 2$.",
    "“A systematic error is one that …” — shifts every reading the same way, and is removed by calibration.",
  ),
  trap-summary: "Three slips. (1) Substituting centimetres into a formula that expects metres — convert *before* you calculate, every time, and write the unit beside each number. (2) Forgetting that a resultant is bounded: two forces of 3 N and 4 N can give anything from 1 N to 7 N, and 5 N only when they are at right angles. (3) Reading the micrometer from the thimble first: the sleeve gives the whole and half millimetres, and the thimble only adds the hundredths.",
)

// ============================================================================
== 1.1 What Physics Measures

A *physical quantity* is anything that can be measured and given a number and a unit. “3.5” is not a measurement; “3.5 m” is. Every equation in this book relates physical quantities, and every quantity carries two things that the examiner tests separately: its *unit* and its *dimensions*.

Quantities divide into two classes. A *fundamental quantity* is one that is not defined in terms of any other: length, mass, time, electric current, temperature, amount of substance and luminous intensity. A *derived quantity* is built from them by multiplication or division — speed is length divided by time, force is mass times acceleration, pressure is force divided by area.

#diagram-fig("diagrams/ch01_si_units.svg",
  "The seven base units and the derived units the paper uses. Every derived unit is a product or a quotient of base units — no new dimension is ever invented.", width: 96%)

The system built on these seven is the *Système International* (SI), and the UTME works entirely inside it. Two of its units are worth a second look. The kilogram is the only base unit that already carries a prefix, so mass in grams must be divided by 1000 before it goes into a formula. And the unit of temperature is the kelvin, not the degree Celsius: $T("K") = theta(degree"C") + 273$.

#table(
  columns: (1.1fr, 0.55fr, 0.8fr, 0.95fr),
  inset: 5.5pt,
  align: (left + horizon, center + horizon, center + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Symbol],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[SI unit],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Dimensions],
  ),
  [length], [$l$], [metre, m], [$[L]$],
  [mass], [$m$], [kilogram, kg], [$[M]$],
  [time], [$t$], [second, s], [$[T]$],
  [current], [$I$], [ampere, A], [$[A]$],
  [velocity], [$v$], [m s⁻¹], [$[L T^(-1)]$],
  [acceleration], [$a$], [m s⁻²], [$[L T^(-2)]$],
  [force], [$F$], [newton, N], [$[M L T^(-2)]$],
  [work, energy], [$W, E$], [joule, J], [$[M L^2 T^(-2)]$],
  [power], [$P$], [watt, W], [$[M L^2 T^(-3)]$],
  [pressure], [$p$], [pascal, Pa], [$[M L^(-1) T^(-2)]$],
  [density], [$rho$], [kg m⁻³], [$[M L^(-3)]$],
  [momentum], [$p$], [kg m s⁻¹], [$[M L T^(-1)]$],
)

// ============================================================================
== 1.2 Prefixes and Standard Form

Physics deals with the diameter of an atom and the distance to a star, and writing either in metres is an invitation to lose count of zeros. The prefixes carry the powers of ten, and standard form carries the arithmetic: a number in standard form is written $A times 10^n$ with $1 <= A < 10$.

#diagram-fig("diagrams/ch01_prefixes.svg",
  "Every prefix the paper uses, on one line. Moving one step to the right multiplies by a thousand; moving one step to the left divides by a thousand — except across the centi and deci steps, which are the two that catch candidates out.", width: 96%)

#concept-box("The three conversions that appear every year")[
  *Speed.* $1 "km h"^(-1) = 1000/3600 "m s"^(-1) = 5/18 "m s"^(-1)$. So 72 km h⁻¹ is $72 times 5/18 = 20$ m s⁻¹, and 15 m s⁻¹ is $15 times 18/5 = 54$ km h⁻¹.

  *Density.* $1 "g cm"^(-3) = 1000 " kg m"^(-3)$, because a gram is $10^(-3)$ kg and a cubic centimetre is $10^(-6)$ m³.

  *Area and volume.* A factor of 100 in length is $100^2 = 10^4$ in area and $100^3 = 10^6$ in volume. That is why 1 m² is 10 000 cm², not 100 cm².
]

#worked-example(
  1,
  "Two conversions done in one line each",
  [Convert (a) 90 km h⁻¹ to m s⁻¹, and (b) the density of aluminium, 2.70 g cm⁻³, to kg m⁻³. Give each answer in standard form where it helps.],
  [
    *(a)* $90 times 1000/3600 = 25$ m s⁻¹. (Multiply by 1000 to turn kilometres into metres, divide by 3600 to turn hours into seconds.)

    *(b)* $2.70 times 1000 = 2.70 times 10^3$ kg m⁻³. (One gram is $10^(-3)$ kg; one cubic centimetre is $10^(-6)$ m³; so $10^(-3) \/ 10^(-6) = 10^3$.)

    *Check.* Aluminium is about three times as dense as water, and water is 1000 kg m⁻³, so 2700 kg m⁻³ is the right order of magnitude. A conversion that leaves a metal lighter than water has gone the wrong way.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 1.3 Dimensions and Dimensional Analysis

The *dimension* of a quantity is what is left when the units are stripped away: length is $[L]$, mass is $[M]$, time is $[T]$ and current is $[A]$. Speed has dimension $[L T^(-1)]$ whatever it is measured in — metres per second, miles per hour or knots.

#formula-box("The dimensional toolkit")[
  + *Homogeneity.* Every term of a physical equation must have the same dimensions. You can add a length to a length, never a length to a time.
  + *Transcendental functions take pure numbers.* $sin theta$, $e^x$ and $ln x$ are dimensionless, so an equation containing them must have a dimensionless argument.
  + *Dimensions multiply and divide like units.* $[F] = [m][a] = [M][L T^(-2)] = [M L T^(-2)]$.
  + *Dimensional analysis finds the form of a relation, not its constant.* It can show that $T$ depends on $sqrt(l / g)$; it cannot tell you the $2 pi$.
]

#worked-example(
  2,
  "Testing an equation with dimensions",
  [Show that $v^2 = u^2 + 2 a s$ is dimensionally consistent, and find the dimensions of (a) pressure and (b) the universal gravitational constant $G$ in $F = G m_1 m_2 \/ r^2$.],
  [
    Each term of the equation must be a velocity squared:

    $[v^2] = [u^2] = (L T^(-1))^2 = L^2 T^(-2)$

    $[2 a s] = (L T^(-2))(L) = L^2 T^(-2)$

    All three terms are $[L^2 T^(-2)]$, so the equation is homogeneous — it *could* be right. Dimensional analysis cannot prove an equation true, but it can prove one false, which is what the examiner is testing.

    *(a)* Pressure is force over area: $[p] = (M L T^(-2)) \/ L^2 = M L^(-1) T^(-2)$.

    *(b)* Rearranging, $G = F r^2 \/ (m_1 m_2)$, so $[G] = (M L T^(-2))(L^2) \/ M^2 = M^(-1) L^3 T^(-2)$.

    *Check.* The unit of $G$ must be N m² kg⁻², and substituting the derived units gives exactly $M^(-1) L^3 T^(-2)$. A dimensions question is only ever as hard as writing the definition of the quantity as a fraction of things you already know.
  ],
  tier: "UTME STANDARD",
  source: "UTME-style",
)

#trap-box("Three dimensional slips the examiner banks every year")[
  *First*, writing the dimension of force as $M L T^(-1)$: that is the dimension of *momentum*, and it is the commonest single error in the topic. Force is $M L T^(-2)$ because acceleration is $L T^(-2)$.

  *Second*, treating the dimension of an angle as $[L]$. An angle is a ratio of two lengths and is dimensionless, which is why $sin theta$ can be expanded as a series and why the radian has no unit.

  *Third*, forgetting that $[M]$ appears in the gas constant and in $G$ raised to a negative power. If your dimension for $G$ has $M$ upstairs, you have inverted the equation somewhere.
]

// ============================================================================
== 1.4 The Measuring Instruments

Every instrument in the laboratory carries a *least count* — the smallest change it can show — and that least count decides how many figures you may write in the answer. The examiner asks two things about them: which instrument suits a measurement, and what a drawn scale reads.

#table(
  columns: (1.25fr, 0.85fr, 1.35fr, 1.4fr),
  inset: 5.5pt,
  align: (left + horizon, center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Instrument],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Least count],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Measures],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Watch out for],
  ),
  [metre rule], [1 mm], [lengths of a few centimetres or more], [the thickness of the rule; view at eye level to avoid parallax],
  [vernier calliper], [0.01 cm (0.1 mm)], [internal, external and depth dimensions], [the zero error, and reading the scale that coincides],
  [micrometer screw gauge], [0.01 mm], [the diameter of a wire, the thickness of a sheet], [turning the ratchet too hard; a zero error of several divisions],
  [measuring cylinder], [1 cm³ or 0.5 cm³], [volumes of liquids], [the meniscus; read the bottom of the curve],
  [burette], [0.05 cm³ or 0.1 cm³], [volumes delivered in a titration], [the initial reading, which must be subtracted],
  [stopwatch], [0.01 s], [time intervals of seconds or more], [human reaction time, about 0.2 s, which is random],
  [spring balance], [0.1 N or 1 N], [weights and forces], [zeroing it before use; the scale is in newtons, not kilograms],
)

#diagram-fig("diagrams/ch01_vernier.svg",
  "A vernier calliper. The main scale gives the tenths of a centimetre; the vernier scale finds which line coincides, and each division of the vernier is 0.01 cm.", width: 96%)

The vernier works by a difference. Its ten divisions span nine divisions of the main scale, so each vernier division is 0.1 mm shorter than a millimetre. Slide the vernier along, and the line that coincides with a main-scale mark tells you how far past the last millimetre you have gone — one tenth of a millimetre for each step.

#diagram-fig("diagrams/ch01_micrometer.svg",
  "A micrometer screw gauge. The sleeve carries whole and half millimetres; the thimble carries fifty divisions, so one division is 0.01 mm.", width: 96%)

#worked-example(
  3,
  "A reading that needs a zero error removed",
  [A vernier calliper reads 3.46 cm when its jaws are closed, with the vernier zero to the right of the main-scale zero. It then reads 5.82 cm on a metal rod. Find the true diameter of the rod.],
  [
    With the jaws closed the instrument should read 0.00 cm; it reads +0.46 cm, so the instrument has a *positive zero error* of 0.46 cm and every reading is too large by that amount.

    True diameter $= 5.82 - 0.46 = 5.36$ cm.

    *Check.* The correction must make the closed reading zero and must move the rod's reading in the same direction as the error — down, here. If your corrected value is larger than the raw reading, you added a positive error instead of subtracting it.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 1.5 Errors and Significant Figures

No measurement is exact, and the examination distinguishes the *size* of an error from its *cause*.

#table(
  columns: (1.1fr, 2.5fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Pair],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The distinction the question is really asking for],
  ),
  [accuracy vs precision], [accuracy is closeness to the true value; precision is closeness of repeated readings to *each other*. A set can be precise and wrong — a mis-calibrated instrument is exactly that],
  [systematic vs random], [systematic errors shift every reading the same way (zero error, a stretched tape, a hot wire); random errors scatter both ways (parallax, reaction time, a wobbling needle)],
  [absolute vs percentage], [absolute error carries the unit and the same size as the quantity; percentage error is that error divided by the value, times 100],
)

#diagram-fig("diagrams/ch01_accuracy.svg",
  "Four sets of readings on the same target. Only the first is both accurate and precise; the second is the signature of a systematic error, and repeating the experiment will never remove it.", width: 92%)

#formula-box("Errors in arithmetic")[
  + *Adding or subtracting:* the absolute errors add. $(20.0 plus.minus 0.1) + (5.0 plus.minus 0.1)$ gives $25.0 plus.minus 0.2$.
  + *Multiplying or dividing:* the percentage errors add. A length with 2 % error times a width with 3 % error gives an area with about 5 % error.
  + *Raising to a power:* multiply the percentage error by the power. A cube of a length with 2 % error has a volume with 6 % error.
  + *Significant figures:* the answer carries no more figures than the least precise data. $2.5 times 4.00 = 10$, not 10.00.
]

#shortcut-box("The two-figure rule of thumb")[
  When a question does not state the uncertainty, assume the last digit written: 2.50 cm means $plus.minus 0.01$ cm, and a stopwatch reading of 12.4 s means $plus.minus 0.1$ s. Then quote the answer to the same number of significant figures as the least precise measurement, and never to more.
]

// ============================================================================
== 1.6 Scalars and Vectors

A *scalar* has magnitude only. A *vector* has magnitude and direction, and it is written in bold ($bold(F)$) or with an arrow, while its magnitude is written in ordinary type ($F$).

#table(
  columns: (1fr, 1fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Scalars],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Vectors],
  ),
  [distance, speed, mass, time, energy, work, power, temperature, density, charge, potential], [displacement, velocity, acceleration, force, weight, momentum, impulse, electric field, torque],
)

The distinction is not pedantry. Walk 3 km east and 4 km north and you have travelled 7 km — the *distance*, a scalar — but you are 5 km from where you started, and that 5 km has a direction: the *displacement*, a vector. Speed is the rate of covering distance; velocity is the rate of displacement, and it can be zero while the speed is not (a runner on a circular track, one lap later).

// ============================================================================
== 1.7 Adding Vectors

Vectors are added head to tail, and the sum is the single vector that would replace them — the *resultant*.

#diagram-fig("diagrams/ch01_vector_add.svg",
  "The triangle law and the parallelogram law give the same resultant. The angle θ in the formula is the angle between the two vectors drawn from the same point.", width: 96%)

#formula-box("The two results to memorise")[
  + *At right angles:* $R = sqrt(F_1^2 + F_2^2)$ and $tan theta = F_2 / F_1$.
  + *At any angle θ:* $R = sqrt(F_1^2 + F_2^2 + 2F_1 F_2 cos theta)$, with the direction given by $tan alpha = (F_2 sin theta) / (F_1 + F_2 cos theta)$.
  + *The bounds:* $|F_1 - F_2| <= R <= F_1 + F_2$. The resultant is largest when the vectors are parallel and smallest when they are antiparallel.
]

#worked-example(
  4,
  "The resultant of two forces at 60°",
  [Two forces of 6.0 N and 8.0 N act at a point with an angle of 60° between them. Find the magnitude of the resultant and the angle it makes with the 6.0 N force.],
  [
    $R = sqrt(6.0^2 + 8.0^2 + 2(6.0)(8.0) cos 60 degree)$

    $R = sqrt(36 + 64 + 96(0.500)) = sqrt(148) = 12.2$ N

    The angle $alpha$ to the 6.0 N force:

    $tan alpha = (8.0 sin 60 degree) / (6.0 + 8.0 cos 60 degree) = 6.93 / 10.0 = 0.693$

    $alpha = 34.7 degree$

    *Check.* The resultant must lie between $8.0 - 6.0 = 2.0$ N and $8.0 + 6.0 = 14.0$ N, and 12.2 N is inside those bounds and near the top, as it should be for a small angle. It must also lie between the two forces, closer to the larger — 34.7° from the 6 N force is closer to the 6 N direction than to the 8 N one, which is wrong: the resultant always lies nearer the *larger* force, so the angle from the 8 N force is the larger one. Re-read the question: the angle asked for is from the 6 N force, and 34.7° from 6 N means 60° − 34.7° = 25.3° from 8 N. That is the correct side.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 1.8 Resolving a Vector

Adding vectors is one half of the skill; the other half is replacing one vector by two at right angles, which is what every equilibrium question needs.

#diagram-fig("diagrams/ch01_vector_resolve.svg",
  "A force resolved into components along two perpendicular axes, and the same idea applied to a block on an incline: the weight has a component down the slope and one into it.", width: 96%)

#formula-box("Resolution in one line")[
  For a vector $F$ at an angle θ to the x-axis: $F_x = F cos theta$ and $F_y = F sin theta$.

  On a slope of angle θ, the weight $W$ resolves into $W sin theta$ *down the slope* and $W cos theta$ *into the slope* — and it is the $cos theta$ component that the normal reaction balances, which is why the reaction is less than the weight on a slope.
]

#worked-example(
  5,
  "A block held on a slope",
  [A block of mass 5.0 kg rests on a smooth plane inclined at 30° to the horizontal. Taking $g = 10$ m s⁻², find (a) the component of its weight down the slope, (b) the normal reaction, and (c) the force needed to hold it at rest.],
  [
    *(a)* $W = m g = 5.0 times 10 = 50$ N, and the component down the slope is $W sin 30 degree = 50 times 0.500 = 25$ N.

    *(b)* The normal reaction balances $W cos 30 degree = 50 times 0.866 = 43$ N.

    *(c)* The plane is smooth, so the only force along it is the 25 N component; a force of 25 N up the slope holds the block at rest.

    *Check.* The reaction (43 N) is less than the weight (50 N) and the two components satisfy $25^2 + 43^2 = 625 + 1849 = 2474$, whose square root is 49.7 N — the weight, as it must be. On a slope, the reaction is never greater than the weight.
  ],
  tier: "UTME STANDARD",
)

#trap-box("Where the marks go in a vector question")[
  *The bounds first.* Before calculating, write down the largest and smallest possible resultant. If your answer falls outside them you have made an arithmetic slip, and you know it before the examiner does.

  *The angle is measured from somewhere.* A direction written as “30°” with no reference line is half an answer; state the force or the axis you measured from.

  *Sine and cosine swap on a slope.* Along the slope it is $sin theta$, into the slope it is $cos theta$ — the opposite of the way round they are measured from the horizontal, and the reason candidates who memorise without a picture lose the marks.
]

// ============================================================================
#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: units, dimensions, instruments and vectors.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Physics begins by deciding what to measure and in what unit: seven base quantities, every other quantity built from them, and a set of prefixes that carry the powers of ten. Strip the units off a quantity and its dimensions remain — $[L]$, $[M]$, $[T]$, $[A]$ — and every physical equation must be homogeneous in them, which is why a dimensions question can be answered without knowing the physics. The instruments add the arithmetic of the laboratory: a metre rule to a millimetre, a vernier to a tenth of a millimetre, a micrometer to a hundredth, each of them with a least count that fixes how many figures you may write, and each of them with a zero error that must be subtracted. And quantities themselves come in two kinds: scalars, which add like numbers, and vectors, which add head to tail, resolve into $F cos theta$ and $F sin theta$, and whose resultant can never be larger than the sum of the magnitudes nor smaller than their difference.
  ]
]

== 1.9 Chapter 1 in the Exam Hall — a Two-Minute Set

#mcq(1, [The dimension of force is], [$[M L T^(-1)]$], [$[M L T^(-2)]$], [$[M L^2 T^(-2)]$], [$[M L^(-1) T^(-2)]$])
#mcq(2, [The instrument best suited to measuring the diameter of a thin wire is the], [metre rule], [vernier calliper], [micrometer screw gauge], [measuring cylinder])
#mcq(3, [Two forces of 3 N and 4 N act at right angles. Their resultant is], [1 N], [5 N], [7 N], [12 N])
#mcq(4, [A body of weight 40 N rests on a smooth plane inclined at 30° to the horizontal. The component of its weight down the plane is], [20 N], [23 N], [35 N], [40 N])

#answer-key-grid(("B", "C", "B", "A"))

#answer-notes((
  ("B", [force is mass times acceleration, $M L T^(-2)$; $M L T^(-1)$ is momentum and $M L^2 T^(-2)$ is energy.]),
  ("C", [the micrometer has a least count of 0.01 mm, ten times finer than the vernier's 0.1 mm.]),
  ("B", [at right angles $R = sqrt(3^2 + 4^2) = 5$ N; the 7 N maximum needs the forces parallel.]),
  ("A", [$W sin 30 degree = 40 times 0.500 = 20$ N — and the reaction is $40 cos 30 degree = 35$ N.]),
))

#concept-box("Carry this into Chapter 2")[
  Everything measured in this chapter was measured *at an instant*. Chapter 2 sets the measurements moving: distance becomes displacement, speed becomes velocity, and the rate at which velocity itself changes is acceleration. The same care with units applies, and one more: every kinematic answer carries a *sign*, and the sign is a direction you chose at the start.
]

#include "drill_ch01.typ"
