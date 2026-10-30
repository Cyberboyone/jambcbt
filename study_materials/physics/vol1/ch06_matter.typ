#import "template.typ": *

#current-chapter.update("Chapter 6: Properties of Matter")
#pagebreak()

#chapter-opener(
  6,
  "Properties of Matter",
  subtitle: "Hooke's Law, Stress, Strain and the Young Modulus, Density and Relative Density, Pressure in Fluids, Pascal's Principle, the Hydraulic Press, Archimedes' Principle and Flotation, Surface Tension and Capillarity, Viscosity and Terminal Velocity",
  syllabus-ref: "Sec. A • Topic 6",
  utme-weight: "4 Qs every year",
  running: "Properties of Matter",
)

#focus-radar(
  objectives: (
    "State Hooke's law and use it to find a spring constant or an extension.",
    "Define stress, strain and the Young modulus, and calculate each.",
    "Calculate density and relative density, including by the method of weighing in water.",
    "Use $p = F \/ A$ and $p = rho g h$, and apply Pascal's principle to a hydraulic press.",
    "State and apply Archimedes' principle, and decide from densities whether a body floats.",
    "Explain surface tension, capillarity and viscosity, and describe terminal velocity.",
  ),
  hotspots: (
    "“A spring of constant 200 N m⁻¹ is stretched 5 cm. The energy stored is …” — 0.25 J.",
    "“The upthrust on a body depends on …” — the volume immersed and the density of the fluid, never on the depth.",
    "“A body of density 750 kg m⁻³ floats in water with …” — a quarter of its volume above the surface.",
    "“Water rises in a narrow tube because …” — surface tension and the adhesion of water to glass.",
    "“A body weighs less in water than in air because …” — the upthrust, equal to the weight of the water displaced.",
    "“As the temperature of a liquid rises, its viscosity …” — falls; gases are the other way round.",
  ),
  trap-summary: "Three slips. (1) Using the *total* length of a spring instead of its *extension* in Hooke's law, or working in centimetres while the constant is per metre. (2) Believing upthrust depends on depth: it depends on the volume of fluid displaced and on the fluid's density, and a body taken deeper in the same liquid displaces the same volume and feels the same upthrust. (3) Confusing density with relative density — $1000$ kg m⁻³ and $1.0$ are the same substance, but only the second is dimensionless, and an answer of “the relative density is 2000 kg m⁻³” has lost the mark before the arithmetic did.",
)

// ============================================================================
== 6.1 Elasticity

A solid resists being pulled apart, squeezed or twisted, and it springs back when the force is removed. *Elasticity* is that property, and for small deformations it is astonishingly simple:

#formula-box("Hooke's law, and the constants that go with it")[
  + $F = k e$ — the force is proportional to the extension, with $k$ the spring constant in N m⁻¹.
  + *Stress* $= F \/ A$, in N m⁻² (pascals). *Strain* $= e \/ L$, dimensionless.
  + *Young modulus* $E = "stress" \/ "strain" = (F \/ A) \/ (e \/ L)$ — the stiffness of the *material*, not of the object.
  + *Energy stored* $= (1\/2) F e$ — the area under the force–extension graph.
]

#diagram-fig("diagrams/ch06_hooke.svg",
  "Hooke's law holds only up to the elastic limit. Beyond it the graph bends, and a wire that has passed the elastic limit does not return to its original length.", width: 92%)

The *elastic limit* is the point beyond which the wire stays stretched when the load is removed. Past the *yield point* it deforms plastically, and at the *breaking point* it snaps. Springs are designed to work well inside the elastic region, which is why a spring balance can be trusted only within its range.

#worked-example(
  1,
  "A spring, and how far it stretches",
  [A spring extends by 4.0 cm when a load of 2.0 N hangs from it. Find (a) the spring constant and (b) the total extension when a further 3.0 N is added.],
  [
    *(a)* $k = F \/ e = 2.0 \/ 0.040 = 50$ N m⁻¹.

    *(b)* The new load is $2.0 + 3.0 = 5.0$ N, so

    $e = F \/ k = 5.0 \/ 50 = 0.10$ m = 10 cm.

    *Check.* The extension is proportional to the force, so five newtons must give $5\/2 = 2.5$ times the original 4.0 cm, which is 10 cm. Working in centimetres and forgetting to convert is the commonest slip: $k$ is in N per *metre*, so 4.0 cm must be written 0.040 m before it is used.

  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The Young modulus of a wire",
  [A wire of length 2.0 m and diameter 0.40 mm is stretched by 6.4 mm when a mass of 4.0 kg hangs from it. Taking $g = 10$ m s⁻² and $pi = 3.14$, find (a) the stress, (b) the strain, and (c) the Young modulus of the metal.],
  [
    The area is $A = pi d^2 \/ 4 = 3.14 times (4.0 times 10^(-4))^2 \/ 4 = 1.26 times 10^(-7)$ m², and the force is $F = 40$ N.

    *(a)* Stress $= F \/ A = 40 \/ (1.26 times 10^(-7)) = 3.2 times 10^8$ N m⁻².

    *(b)* Strain $= e \/ L = (6.4 times 10^(-3)) \/ 2.0 = 3.2 times 10^(-3)$.

    *(c)* $E = "stress" \/ "strain" = (3.2 times 10^8) \/ (3.2 times 10^(-3)) = 1.0 times 10^(11)$ N m⁻².

    *Check.* A strain of 0.32 % under a 40 N load is what a metal wire does; rubber would stretch many times further for the same stress, and that is exactly what a small Young modulus means. The units are the same as stress, because strain has none.

  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 6.2 Density and Relative Density

*Density* is mass per unit volume, and it is the property that decides whether a body floats:

$ rho = m \/ V, $

in kg m⁻³ — or in g cm⁻³, where $1$ g cm⁻³ $= 1000$ kg m⁻³. *Relative density* (formerly specific gravity) is the ratio of a substance's density to the density of water:

$ "relative density" = rho_"substance" \/ rho_"water" = (m_"substance") \/ (m_"equal volume of water"), $

and it has no unit. A relative density of 0.8 means 800 kg m⁻³, and since water is 1.0 g cm⁻³, the relative density is numerically the same as the density in g cm⁻³ — which is why the two get confused.

#table(
  columns: (1.5fr, 1.0fr, 1.6fr),
  inset: 5.5pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Substance],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Density / kg m⁻³],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Note],
  ),
  [air], [1.3], [so light that its upthrust lifts balloons],
  [wood (varies)], [400 – 800], [floats: less dense than water],
  [water], [1000], [the reference for relative density],
  [aluminium], [2700], [sinks],
  [iron], [7900], [sinks],
  [mercury], [13 600], [a liquid denser than iron, which is why iron floats on it],
)

// ============================================================================
== 6.3 Pressure in Fluids and Pascal's Principle

*Pressure* is force per unit area, in pascals (N m⁻²). In a liquid at rest the pressure at a depth $h$ comes from the weight of the liquid above:

$ p = rho g h, $

and it acts equally in all directions at that depth — which is why a dam is built thicker at the bottom and why a small hole low in a vessel lets water out fastest.

*Pascal's principle:* pressure applied to an enclosed fluid is transmitted undiminished to every part of the fluid and to the walls of the container. A hydraulic press uses it to multiply force:

#diagram-fig("diagrams/ch06_hydraulic.svg",
  "A hydraulic press. The same pressure acts on both pistons, so the larger area carries the larger force — but it moves through a proportionally smaller distance, and the work done is unchanged.", width: 94%)

$ p = F_1 \/ A_1 = F_2 \/ A_2$, so $F_2 = F_1 times (A_2 \/ A_1)$,

and the distances moved are in the opposite ratio: the small piston travels $A_2 \/ A_1$ times as far as the large one. The force is multiplied; the *work* is not, which is why a hydraulic jack needs a long stroke of the handle to lift a car a few centimetres.

#worked-example(
  3,
  "A hydraulic press",
  [In a hydraulic press the small piston has an area of 5.0 cm² and the large piston an area of 200 cm². A force of 40 N is applied to the small piston. Find (a) the pressure in the fluid, (b) the force on the large piston, and (c) how far the large piston rises when the small piston moves down 20 cm.],
  [
    *(a)* $A_1 = 5.0$ cm² $= 5.0 times 10^(-4)$ m², so

    $p = F_1 \/ A_1 = 40 \/ (5.0 times 10^(-4)) = 8.0 times 10^4$ Pa.

    *(b)* The pressure is the same throughout the fluid:

    $F_2 = p A_2 = 8.0 times 10^4 times 200 times 10^(-4) = 1600$ N.

    *(c)* The volume of liquid pushed out of the small cylinder equals the volume that enters the large one:

    $d_2 = d_1 times (A_1 \/ A_2) = 20 times (5.0 \/ 200) = 0.50$ cm.

    *Check.* The force is multiplied by 40 and the distance divided by 40: $40 times 20 = 1600 times 0.50$, so the work in equals the work out. A machine that gave more work than it received would be a perpetual-motion machine, and the examiner's version of that error is the answer “800 N and 20 cm”.

  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 6.4 Archimedes' Principle and Flotation

*When a body is wholly or partly immersed in a fluid, the fluid exerts on it an upthrust equal to the weight of the fluid displaced.*

#diagram-fig("diagrams/ch06_archimedes.svg",
  "Archimedes' principle. The upthrust is the weight of the fluid pushed aside, so it depends on the volume immersed and on the density of the fluid — and not at all on how deep the body lies.", width: 96%)

#formula-box("The three consequences")[
  + *Apparent weight* $= W - U$: a body weighs less in a liquid than in air, and the loss of weight *is* the upthrust.
  + *Law of flotation:* a floating body displaces its own weight of fluid, so the fraction submerged is $rho_"body" \/ rho_"fluid"$.
  + *Sinking:* a body sinks when its weight is greater than the greatest upthrust the fluid can give, which happens when $rho_"body" > rho_"fluid"$.
]

#worked-example(
  4,
  "A body weighed in air and in water",
  [A body of mass 0.30 kg hangs from a spring balance. When it is completely immersed in water the balance reads 0.20 kg. Taking $g = 10$ m s⁻² and the density of water as 1000 kg m⁻³, find (a) the upthrust, (b) the volume of the body, (c) its density and (d) its relative density.],
  [
    *(a)* The apparent loss of weight is the upthrust:

    $U = (0.30 - 0.20) times 10 = 1.0$ N.

    *(b)* The upthrust equals the weight of the water displaced:

    $1.0 = rho g V$, so $V = 1.0 \/ (1000 times 10) = 1.0 times 10^(-4)$ m³.

    *(c)* $rho = m \/ V = 0.30 \/ (1.0 times 10^(-4)) = 3000$ kg m⁻³.

    *(d)* Relative density $= 3000 \/ 1000 = 3.0$.

    *Check.* The body is three times as dense as water, so it would sink if released — and the balance confirms it, since it still reads 0.20 kg while submerged rather than zero. If the reading had been zero, the body would have been exactly as dense as water and would have floated just submerged.

  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 6.5 Surface Tension and Capillarity

The surface of a liquid behaves like a stretched skin. Molecules at the surface have neighbours below but not above, so they are pulled inwards, and the surface contracts to the smallest area it can — which is why a raindrop is a sphere and why a steel needle, laid flat on water, can float although steel is eight times as dense as water.

*Surface tension* is the force per unit length along the surface, in N m⁻¹, and it is the reason a soap film pulls itself flat, a small drop is harder to split than a large one, and a detached drop forms a sphere.

*Capillarity* is the rise or fall of a liquid in a narrow tube. Water wets glass (adhesion beats cohesion) and rises; mercury does not wet glass and is depressed. The narrower the tube, the higher the rise:

$ h = 2 gamma cos theta \/ (rho g r). $

Detergents lower the surface tension of water, which is why they make it wet cloth more easily and why soap bubbles form.

// ============================================================================
== 6.6 Viscosity and Terminal Velocity

*Viscosity* is a fluid's resistance to flow — its internal friction. Honey is far more viscous than water, and the viscosity of a liquid falls as it is heated while that of a gas rises.

A body falling through a viscous fluid feels three forces: its weight downwards, the upthrust of the fluid upwards, and the viscous drag upwards — and the drag grows with speed.

#diagram-fig("diagrams/ch06_viscosity.svg",
  "Terminal velocity. The drag grows as the body speeds up, until the drag and the upthrust together balance the weight; after that the acceleration is zero and the speed stays constant.", width: 94%)

At first the weight wins and the body accelerates. As it speeds up, the drag grows, until

$ W = U + "drag" $

and the resultant force is zero. The body now falls at its *terminal velocity*, which is constant, and it is the reason a parachute works: it does not reduce the weight, it increases the drag until the terminal velocity is a few metres per second instead of fifty.

#worked-example(
  5,
  "Pressure under water, and a mercury barometer",
  [Taking atmospheric pressure as $1.0 times 10^5$ Pa, $g = 10$ m s⁻², the density of water as 1000 kg m⁻³ and of mercury as 13 600 kg m⁻³, find (a) the total pressure on a diver 20 m below the surface and (b) the height of mercury that the atmosphere supports in a barometer.],
  [
    *(a)* $p = p_"atm" + rho g h = 1.0 times 10^5 + 1000 times 10 times 20 = 1.0 times 10^5 + 2.0 times 10^5 = 3.0 times 10^5$ Pa.

    *(b)* $p_"atm" = rho g h$, so

    $h = (1.0 times 10^5) \/ (13 600 times 10) = 0.74$ m ≈ 74 cm of mercury.

    *Check.* Ten metres of water is about one atmosphere, and mercury is 13.6 times as dense, so the same pressure supports only about 0.74 m of mercury — which is why the barometer is a metre long and not a ten-metre pipe.

  ],
  tier: "UTME STANDARD",
)

// ============================================================================
#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: elasticity, density, pressure, flotation and the fluid effects.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Matter has bulk, and this chapter is the arithmetic of that bulk. A solid resists being stretched in proportion to the stretch, and the constant that describes the *material* rather than the object is the Young modulus — stress over strain, with strain dimensionless. Density is mass per unit volume and relative density is the same number measured against water, which is why 750 kg m⁻³ and 0.75 are one substance and not two. Pressure in a fluid grows with depth and acts in every direction; Pascal's principle carries an applied pressure undiminished through an enclosed liquid, so a hydraulic press multiplies force in proportion to the areas and divides distance in the same proportion, leaving the work alone. Archimedes says the upthrust is the weight of fluid displaced, so apparent weight, flotation and sinking all follow from one comparison of densities. And at the surfaces and edges of fluids, surface tension pulls a skin tight, capillarity lifts water up a narrow tube, and viscosity turns a fall into a constant terminal velocity.
  ]
]

== 6.7 Chapter 6 in the Exam Hall — a Two-Minute Set

#mcq(1, [A spring of constant 200 N m⁻¹ is stretched by 5.0 cm. The energy stored in it is], [0.10 J], [0.25 J], [0.50 J], [5.0 J])
#mcq(2, [The upthrust on a body immersed in a liquid depends on], [the mass of the body only], [the weight of the body only], [the volume immersed and the density of the liquid], [the depth of the body below the surface])
#mcq(3, [A body of mass 60 g has a volume of 80 cm³. When placed in water it will], [float with a quarter of its volume above the surface], [float with three quarters above the surface], [sink to the bottom], [remain suspended at any depth])
#mcq(4, [Water rises in a narrow glass tube because of], [the pressure of the atmosphere], [surface tension and the adhesion of water to glass], [the viscosity of water], [the density of water])

#answer-key-grid(("B", "C", "A", "B"))

#answer-notes((
  ("B", [energy $= (1\/2) F e = (1\/2) times 10 times 0.050 = 0.25$ J, since $F = k e = 200 times 0.050 = 10$ N.]),
  ("C", [upthrust equals the weight of fluid displaced, so it depends on the volume immersed and on the fluid's density — and not on the depth.]),
  ("A", [its density is $60\/80 = 0.75$ g cm⁻³, so three quarters of it is submerged and a quarter rides above the surface.]),
  ("B", [adhesion between water and glass beats the cohesion of the water, and surface tension draws the column up.]),
))

#concept-box("Carry this into Volume 2")[
  This volume has treated motion, force, energy, oscillation and the bulk properties of matter. Volume 2 turns to *waves and fields*: the same simple harmonic motion you have just met becomes a wave travelling through a medium, the pressure you have calculated becomes a sound wave in air, and the force between charges takes the place of the force between masses. The mathematics is the same; only the messenger changes.
]

#include "drill_ch06.typ"
